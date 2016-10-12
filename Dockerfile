FROM java:7

COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get update && apt-get install -y vim && apt-get clean && rm -rf /var/lib/apt/lists
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
