from rest_framework import serializers
from .models import Members

class MemberSerializers(serializers.ModelSerializer):
  class Meta:
    model = Members
    fields = ["id","keynum","name","degree","status","phone","address","office","tac","hm"]