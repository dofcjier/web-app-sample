FROM iad.ocir.io/gse00014267/api_base:latest

MAINTAINER Dave Franco <dave.franco@oracle.com>

#App directory
WORKDIR /src

#Move source into container image
COPY src/ .

#Expose server port
EXPOSE 5000

#...and run this
ENTRYPOINT [ "/usr/local/bin/python" ]
CMD [ "app.py" ]
