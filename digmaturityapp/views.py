import io
from collections import namedtuple
from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseForbidden, HttpResponseNotFound, HttpResponseBadRequest
from django.utils import timezone
from django.contrib.admin.views.decorators import staff_member_required
from .models import Block, Question, Answer, SecretCode, Respondent, Faculty
from .digutils import create_bar
import pandas as pd

# Create your views here.

COOKIE_MAXAGE = 60 * 60
MAX_QUESTION_COST = 5
MIN_QUESTION_COST = 1


def index(request):
    response = redirect('/survey/')
    if request.method == "GET":
        if request.session.get('logged') == "True":
            return response
        return render(request, "digmaturityapp/index.html")

    code = request.POST.get('code')
    code_obj = SecretCode.objects.filter(secret=code, expires_at__gt=timezone.now()).first()
    if code and code_obj:
        request.session['logged'] = "True"
        response.set_cookie('secret_id', str(code_obj.id), max_age=COOKIE_MAXAGE)
        return response

    context = {'error': 'Неверный код'}
    return render(request, "digmaturityapp/index.html", context)


def survey(request):
    if request.COOKIES.get('success') == "True":
        return success(request)

    if request.session.get('logged') == "True":
        blocks = Block.objects.all()
        questions = Question.objects.all().order_by('id')
        answers = Answer.objects.all().order_by('id')
        context = {
            'blocks': blocks,
            'questions': questions,
            'answers': answers
        }
        return render(request, "digmaturityapp/survey.html", context)
    else:
        return HttpResponseForbidden()


def success(request):
    return render(request, "digmaturityapp/success.html")


def survey_form(request):
    if request.method == 'GET' or request.session.get('logged') != "True":
        return HttpResponseNotFound()

    result_5 = result_100 = max_result = 0
    # Get answers from POST request
    questions = Question.objects.all().order_by('id')
    answer_fields = []
    for question in questions:
        field = request.POST.get(f'group{question.id}')
        if field is None:
            return HttpResponseBadRequest()

        answer_obj = Answer.objects.get(id=field)
        answer_fields.append(answer_obj)

        curr_weight = answer_obj.question_id.weight
        result_5 += answer_obj.value * curr_weight
        result_100 += (answer_obj.value - MIN_QUESTION_COST) * curr_weight
        max_result += (MAX_QUESTION_COST - MIN_QUESTION_COST) * curr_weight

    result_100 = (result_100 / max_result) * 100

    # Get full name from POST request
    f_name_field = request.POST.get('first_name')
    s_name_field = request.POST.get('second_name')
    patr_name_field = request.POST.get('patronymic')

    if not f_name_field or not s_name_field or not patr_name_field:
        return HttpResponseBadRequest()

    # Get gender field from POST request
    gender_field = request.POST.get('gender')
    if not gender_field:
        return HttpResponseBadRequest()

    # Get secrete code id from Cookies
    secret_obj = SecretCode.objects.get(id=request.COOKIES.get('secret_id'))

    try:
        new_respondent = Respondent.objects.create(
            first_name=f_name_field,
            second_name=s_name_field,
            patronymic=patr_name_field,
            gender=gender_field,
            calculated_result_5=result_5,
            calculated_result_100=result_100,
            secret_id=secret_obj
        )
        new_respondent.answers.add(*answer_fields)
    except Exception as e:
        print(e)
        return HttpResponseBadRequest()

    response = redirect('/survey/')
    response.set_cookie('success', 'True', COOKIE_MAXAGE)
    return response


@staff_member_required
def results(request):
    year = request.GET.get('year')
    faculty = request.GET.get('faculty')
    if not year and not faculty:
        respondents_objs = Respondent.objects.all().order_by('id')
    elif year and faculty:
        respondents_objs = Respondent.objects.filter(
            secret_id__faculty_id_id=faculty,
            created_at__year=year
        ).order_by('id')
    elif year:
        respondents_objs = Respondent.objects.filter(created_at__year=year).order_by('id')
    elif faculty:
        respondents_objs = Respondent.objects.filter(secret_id__faculty_id_id=faculty).order_by('id')

    respondent_names = []
    respondent_ids = []
    respondent_res = []
    for respondent in respondents_objs:
        respondent_ids.append(str(respondent.id))
        respondent_names.append(str(respondent))
        respondent_res.append(respondent.calculated_result_100)

    Plots = namedtuple('Plots', 'script, div')
    script, div = create_bar(
        respondent_ids[:],
        respondent_res[:],
        respondent_names[:],
        'Диаграмма баллов у сотрудников',
        "ID Сотрудника",
        "Баллы"
    )
    bar_plot = Plots(script, div)

    blocks = Block.objects.all()[1:]
    respondent_answers = []
    for respondent in respondents_objs:
        respondent_answers.append(Answer.objects.filter(respondent=respondent))

    block_answers = dict()
    for block in blocks:
        block_answers[block.id] = []
        for answers in respondent_answers:
            block_answers[block.id] += answers.filter(question_id__block_id=block)

    block_scores = dict()
    max_scores = dict()
    for block_id, answers in block_answers.items():
        block_scores[block_id] = 0
        max_scores[block_id] = 0
        for answer in answers:
            block_scores[block_id] += (answer.value - MIN_QUESTION_COST) * answer.question_id.weight
            max_scores[block_id] += (MAX_QUESTION_COST - MIN_QUESTION_COST) * answer.question_id.weight

    general_block_scores = dict()
    for block in blocks:
        general_block_scores[block.id] = (block_scores[block.id] / max_scores[block.id]) * 100
        general_block_scores[block.id] /= 20

    faculties = [(f.id, f.short_name) for f in Faculty.objects.all()]
    years = set(r.created_at.year for r in respondents_objs)

    block_ids = [str(block.id) for block in blocks]
    block_names = [block.name for block in blocks]
    block_scores_n = [v for _, v in general_block_scores.items()]
    max_block_scores = [5 for _ in blocks]
    radar = Plots(*create_bar(
        block_ids,
        block_scores_n,
        block_names,
        "Диаграмма показателей по блокам",
        "ID Блока",
        "Баллы",
        lines=[(max_block_scores, "Идеальное значение")]
    ))
    context = {
        'bar_plot': bar_plot,
        'faculties': faculties,
        'years': years,
        'radar': radar
    }
    return render(request, "digmaturityapp/results.html", context)


@staff_member_required
def download_csv(request):
    qs = Respondent.objects.all()
    answers_objs = Answer.objects.all()
    data = []
    for q in qs:
        temp = dict(
            {
             'date': q.created_at.year,
             'first_name': q.first_name,
             'second_name': q.second_name,
             'patronymic': q.patronymic,
             'gender': q.gender,
             'faculty': q.secret_id.faculty_id.short_name,
             'result_5': q.calculated_result_5,
             'result_100': q.calculated_result_100,
            }
        )
        answers = {
            f'question_id_{a.question_id.id}_block_id_{a.question_id.block_id.id}': (a.value - 1) * a.question_id.weight
            for a in answers_objs.filter(respondent=q)
        }

        data.append({**temp, **answers})
    df = pd.DataFrame(data)
    buffer = io.StringIO()
    df.to_csv(buffer)

    buffer.seek(0)
    response = HttpResponse(buffer, content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename=respondents.csv'

    return response
