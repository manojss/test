FROM ubuntu
MAINTAINER testuser@gmail.com
RUN apt-get update

#Install Dependencies
RUN apt-get install -y python-pip
RUN pip install flask

RUN mkdir app
COPY src app
EXPOSE 8081
CMD ["/usr/bin/python","/app/webapp.py"]
