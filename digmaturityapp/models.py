from django.db import models
from django.utils import timezone
from .digutils import generate_secret_code


# Create your models here.
class Block(models.Model):
    name = models.CharField(max_length=255, verbose_name='Название')
    weight = models.FloatField(verbose_name='Вес')

    class Meta:
        verbose_name = "Блок"
        verbose_name_plural = "Блоки"

    def __str__(self):
        return self.name + ' ' + str(self.weight)


class Question(models.Model):
    block_id = models.ForeignKey(Block, on_delete=models.CASCADE, verbose_name='Блок')
    subfactor_name = models.CharField(max_length=255)
    text = models.TextField(verbose_name='Текст вопроса')
    weight = models.FloatField(verbose_name='Вес')

    class Meta:
        verbose_name = "Вопрос"
        verbose_name_plural = "Вопросы"

    def __str__(self):
        return self.subfactor_name + ' (' + str(self.weight) + ')'


class Answer(models.Model):
    question_id = models.ForeignKey(Question, on_delete=models.CASCADE, verbose_name='Вопрос')
    text = models.TextField(verbose_name='Текст ответа')
    value = models.FloatField(verbose_name='Стоимость ответа')

    class Meta:
        verbose_name = "Ответ"
        verbose_name_plural = "Ответы"

    def __str__(self):
        return str(self.question_id.subfactor_name) + ': ' + self.text + ' (' + str(self.value) + ')'


class Faculty(models.Model):
    short_name = models.CharField(max_length=127, verbose_name='Короткое название')
    full_name = models.CharField(max_length=255, verbose_name='Полное название')

    class Meta:
        verbose_name = "Факультет"
        verbose_name_plural = "Факультеты"

    def __str__(self):
        return self.short_name


def generate_uniq_secret_code(length):
    queryset = "some"
    while queryset:
        code = generate_secret_code(length)
        queryset = SecretCode.objects.filter(secret=code).first()
    return code


class SecretCode(models.Model):
    @staticmethod
    def default_uniq_secret_code():
        return generate_uniq_secret_code(8)

    secret = models.CharField(max_length=63, unique=True, verbose_name='Код', default=default_uniq_secret_code)
    faculty_id = models.ForeignKey(Faculty, on_delete=models.CASCADE, verbose_name='Факультет')
    created_at = models.DateTimeField(default=timezone.now, verbose_name='Создан')
    expires_at = models.DateTimeField(verbose_name='Истекает')

    class Meta:
        verbose_name = "Секретный код"
        verbose_name_plural = "Секретные коды"

    def __str__(self):
        return self.secret


class Respondent(models.Model):
    answers = models.ManyToManyField(Answer, verbose_name='Ответы')
    first_name = models.CharField(max_length=127, verbose_name='Имя')
    second_name = models.CharField(max_length=127, verbose_name='Фамилия')
    patronymic = models.CharField(max_length=127, verbose_name='Отчество')
    gender = models.CharField(max_length=63, verbose_name='Пол')
    calculated_result_5 = models.FloatField(verbose_name="Оценка ЦЗ по 5-бальной шкале")
    calculated_result_100 = models.FloatField(verbose_name="Оценка ЦЗ по 100-бальной шкале")
    secret_id = models.ForeignKey(SecretCode, null=True, on_delete=models.SET_NULL, verbose_name='Секретный код')
    created_at = models.DateTimeField(auto_now_add=True, verbose_name='Создан')

    class Meta:
        verbose_name = "Респондент"
        verbose_name_plural = "Респонденты"

    def __str__(self):
        return self.first_name + ' ' + self.second_name

    def get_answers(self):
        return "\n".join([str(a) for a in self.answers.all()])

    get_answers.short_description = "Ответы"
