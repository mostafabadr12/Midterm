FROM ubuntu
COPY ./code /root/project
RUN apt-get update
RUN apt-get install cim -y
RUN g++ hello_world.cpp -o hello
WORKDIR /root/project
RUN ./hello