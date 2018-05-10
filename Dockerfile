#FROM python:2.7-slim
FROM openjdk:8u111-jdk
# Monitoring
RUN wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.2.0-amd64.deb
RUN dpkg -i filebeat-5.2.0-amd64.deb
RUN rm filebeat-5.2.0-amd64.deb
 
COPY filebeat.yml /etc/filebeat/filebeat.yml
WORKDIR /app
ADD . /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 80
ENV NAME AUDACY
CMD ["python", "task.py"]

