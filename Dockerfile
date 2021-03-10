FROM osgeo/gdal

LABEL maintainer="Ralf Trier GDI-Service"


RUN java -version 
ADD /lib/* /cmdserver/lib/
ADD /classes/* /cmdserver/classes/
WORKDIR /cmdserver

EXPOSE 8080

ENTRYPOINT [ "java", "-Djava.awt.headless=true", "-cp", "/cmdserver/classes/:/cmdserver/lib/de.gdiservice.cmdserver-0.0.1-SNAPSHOT.jar", "de.gdiservice.cmdserver.CmdServer", "server" ]
