FROM python:3.6

RUN pip3 install --upgrade pip

RUN mkdir -p /todoback

WORKDIR /todoback

ADD . /todoback/
RUN pip3 install -r requirements.pip
RUN pip3 install gunicorn

#EXPOSE 8000

ENV PYTHONUNBUFFERED 1

COPY ./entrypoint.sh /todoback/
ENTRYPOINT [ "/todoback/entrypoint.sh" ]

# CMD ["gunicorn", "--chdir", "todoback", "--bind", ":8000", "todoback.wsgi:application"]

