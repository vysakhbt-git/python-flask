FROM alpine
COPY . /python-flask
WORKDIR /python-flask
RUN apk update && apk add python3 --no-cache && apk add --update py-pip && pip3 install -r requirements.txt
EXPOSE 5000
CMD ["python3","app.py"]
