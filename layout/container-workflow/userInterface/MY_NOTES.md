
The Dockerfile will:  
- Use the `openjdk:11-jdk-alpine` image as the base image  
- Create a directory called `/app` in the image  
- Set the working directory to `/app`  
- Copy the `userInterface-1.0.0-SNAPSHOT-fat.jar` file from the host machine to the `/app` directory in the image  
- Expose port 8081 on the image  
- Set the `ENTRYPOINT` to the command that will be executed when the container starts


