FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /djangoRest
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY ./djangoRest ./djangoRest
CMD ["python", "./djangoRest/manage.py", "runserver", "0.0.0.0:2000"]