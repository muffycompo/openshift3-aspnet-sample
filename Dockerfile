FROM muffycompo/aspnet

MAINTAINER Mfawa Alfred Onen <muffycompoqm@gmail.com>

COPY project.json /app/

WORKDIR /app

RUN ["dnu", "restore"]

COPY . /app

EXPOSE 5004

ENTRYPOINT ["dnx", "kestrel"]
