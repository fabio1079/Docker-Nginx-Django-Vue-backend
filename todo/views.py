from rest_framework import viewsets

from .models import Todo
from .serializers import TodoSerializer

class TodoViewset(viewsets.ModelViewSet):
    serializer_class = TodoSerializer
    queryset = Todo.objects.all()


