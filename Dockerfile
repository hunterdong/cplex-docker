FROM ubuntu:18.04

ENV JAVA_VER 8
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip
RUN apt-get install -y default-jre-headless

RUN pip install --upgrade pip

COPY requirements.txt /bin/

RUN pip install -r /bin/requirements.txt

COPY . /bin

CMD ["/bin/cplex_studio128.linux-x86-64.bin"]

RUN echo "2" yes "1" yes yes yes