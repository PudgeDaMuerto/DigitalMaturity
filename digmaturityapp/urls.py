from django.urls import path

from . import views

urlpatterns = [
    path("", views.index, name="index"),
    path("survey/", views.survey, name="survey"),
    path("survey_form/", views.survey_form, name="survey_form"),
]
