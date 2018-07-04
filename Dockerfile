FROM python:alpine3.6

MAINTAINER Dave Franco <dave.franco@oracle.com>


#App directory
RUN mkdir src
WORKDIR /src

#Copy dependencies into container
#COPY venv /src/venv

#Move source into container image
#COPY src/ .

ADD . .

#Expose server port
EXPOSE 5000

#...and run this
ENTRYPOINT [ "venv/bin/python" ]
CMD [ "app.py" ]
