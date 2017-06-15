FROM python:3.4

WORKDIR /usr/src/app
RUN pip install Flask==0.12 flask-restful==0.3.5
COPY . /usr/src/app
EXPOSE 80

CMD [ "python", "api.py" ]
