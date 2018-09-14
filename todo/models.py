from django.db import models

class Todo(models.Model):
    text = models.CharField(max_length=80, blank=False, unique=True)
    done = models.BooleanField()

    def __str__(self):
        return self.text

