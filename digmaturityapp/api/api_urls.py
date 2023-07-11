from django.urls import path
from .api_views import FacultyApiView, SecretCodeApiView, RespondentApiView

urlpatterns = [
    path("faculty/", FacultyApiView.as_view(), name="faculty"),
    path("secretcode/", SecretCodeApiView.as_view(), name="secretcode"),
    path("respondent/", RespondentApiView.as_view(), name="respondent"),
]
