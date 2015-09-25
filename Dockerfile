#FROM microsoft/aspnet
FROM muffycompo/aspnet5

COPY project.json /app/
WORKDIR /app
RUN ["dnu", "restore"]
COPY . /app

EXPOSE 5004
ENTRYPOINT ["dnx", "kestrel"]
