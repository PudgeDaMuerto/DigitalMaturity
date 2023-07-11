from rest_framework import serializers
from ..models import Faculty, SecretCode, Respondent, Answer


class FacultySerializer(serializers.ModelSerializer):
    class Meta:
        model = Faculty
        fields = '__all__'


class SecretCodeSerializer(serializers.ModelSerializer):
    faculty_name = serializers.CharField(source='faculty_id.short_name', read_only=True)

    class Meta:
        model = SecretCode
        fields = '__all__'
        read_only_fields = ('secret', 'created_at')


class AnswerSerializer(serializers.ModelSerializer):
    block = serializers.CharField(source='question_id.block_id.name')
    question = serializers.CharField(source='question_id.text')

    class Meta:
        model = Answer
        fields = '__all__'


class RespondentSerializer(serializers.ModelSerializer):
    answers = AnswerSerializer(read_only=True, many=True)

    class Meta:
        model = Respondent
        fields = '__all__'
