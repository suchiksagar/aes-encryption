FROM python:3
LABEL Winter Soldier <sagarksuchi@gmail.com>

RUN apt-get update && \
    apt-get install -y ruby-full && \
    apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    mkdir /home/javadir && \
    mkdir /home/python && \
    mkdir /home/ruby

RUN pip3 install pycryptodome

COPY welcome.sh /home/
COPY javadir/ /home/javadir/
COPY python/ /home/python/
COPY ruby/ /home/ruby/
RUN sed -i 's/\r//' /home/welcome.sh
RUN javac /home/javadir/AESSample.java
ENV PATH="/home:${PATH}"
CMD [ "bash", "/home/welcome.sh" ]
