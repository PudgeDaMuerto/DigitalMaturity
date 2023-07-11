from rest_framework import generics

from ..models import Faculty, SecretCode, Respondent
from .serializers import FacultySerializer, SecretCodeSerializer, RespondentSerializer


class FacultyApiView(generics.ListCreateAPIView):
    queryset = Faculty.objects.all()
    serializer_class = FacultySerializer


class SecretCodeApiView(generics.ListCreateAPIView):
    queryset = SecretCode.objects.all()
    serializer_class = SecretCodeSerializer


class RespondentApiView(generics.ListAPIView):
    queryset = Respondent.objects.all()
    serializer_class = RespondentSerializer
