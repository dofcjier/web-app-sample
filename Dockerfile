FROM python:alpine3.6

MAINTAINER Dave Franco <dave.franco@oracle.com>

#App directory
RUN mkdir /src
WORKDIR /src

#Move source into container image
ADD src/ .

#Install app dependencies
RUN pip install -r requirements.txt

#Expose server port
EXPOSE 5000

#...and run this
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
