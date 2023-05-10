FROM openjdk:17-bullseye

WORKDIR /app

COPY H10E01-Containers-1.0.0.jar /app.jar
COPY start.sh /app.jar
# creat a new app directory for my application files
#Copy the app files from host machine to image filesystem

RUN chmod 770 start.sh

CMD ./start.sh

# TODO: Add base image
# TODO: Set workdir
# TODO: Copy the compiled jar
# TODO: Copy the start.sh script
# TODO: Make start.sh executable
# TODO: Set the start command