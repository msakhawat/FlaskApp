FROM registry.redhat.io/ubi8

RUN yum -y update && yum -y install python3

COPY ./src .
COPY ./requirments.txt .

RUN pip3 install -r requirments.txt

#########
COPY ./src .
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 80

CMD ["flask", "run"]