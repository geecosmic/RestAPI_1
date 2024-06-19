from django.urls import path
from . import views


urlpatterns = [
    path('members/',  views.MembersListCreate.as_view() , name="members-view"),
    path('members/<int:pk>',  views.MembersRetrieveUpdateDestroy.as_view() , name="members-update"),
]
