# Python support can be specified down to the minor or micro version
# (e.g. 3.6 or 3.6.3).
# OS Support also exists for jessie & stretch (slim and full).
# See https://hub.docker.com/r/library/python/ for all supported Python
# tags from Docker Hub.
FROM python:3.6

# If you prefer miniconda:
#FROM continuumio/miniconda3

LABEL Name=hello-flask Version=0.0.1
EXPOSE 5000 5678

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

WORKDIR /app
COPY . /app

#RUN cp sitecustomize.py /usr/local/lib/python3.6/
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]



CMD ["python", "app.py", "--no-debugger", "--reload"]
