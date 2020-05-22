FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80
ENTRYPOINT [ "gunicorn","--bind","0.0.0.0:80","wsgi:app" ]
# CMD [ "python", "./app.py" ]