from django.shortcuts import render
from rest_framework import generics
from .models import Members
from .serializers import MemberSerializers

class MembersListCreate(generics.ListCreateAPIView):
  queryset= Members.objects.all()
  serializer_class = MemberSerializers

class MembersRetrieveUpdateDestroy(generics.RetrieveUpdateDestroyAPIView):
  queryset= Members.objects.all()
  serializer_class = MemberSerializers
  lookup_field="pk"