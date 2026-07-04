FROM python:3.13.12
WORKDIR /project
COPY . .
RUN pip install Django
RUN pip install icecream
RUN pip install psycopg
RUN pip install psycopg2-binary
CMD ["python","manage.py","makemigrations"]
CMD ["python","manage.py","migrate"]
CMD ["python","manage.py","runserver","0.0.0.0:6000"]


