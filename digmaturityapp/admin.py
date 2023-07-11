from django.contrib import admin
from .models import *
from rest_framework.authtoken.admin import TokenProxy, TokenAdmin


# Register your models here.
class RespondentAdmin(admin.ModelAdmin):
    exclude = ('answers', )
    readonly_fields = ('calculated_result_5', 'calculated_result_100', 'created_at', 'get_answers')


class SecretCodeAdmin(admin.ModelAdmin):
    readonly_fields = ('created_at',)


class BetterTokenAdmin(TokenAdmin):
    def get_queryset(self, request):
        qs = super().get_queryset(request)
        if request.user.is_superuser:
            return qs
        return qs.filter(user=request.user)


admin.site.register(Block)
admin.site.register(Question)
admin.site.register(Answer)
admin.site.register(Faculty)
admin.site.register(SecretCode, SecretCodeAdmin)
admin.site.register(Respondent, RespondentAdmin)

admin.site.unregister(TokenProxy)
admin.site.register(TokenProxy, BetterTokenAdmin)
