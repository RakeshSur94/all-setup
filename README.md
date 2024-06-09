1. how to setup nexus in winodws/using doker
2. docker pull sonatype/nexus3
3. docker run -d -p 8081:8081 --name nexus -v nexus-data:/nexus-data sonatype/nexus3
-d runs the container in detached mode.
-p 8081:8081 maps port 8081 on the host to port 8081 on the container.
--name nexus names the container "nexus".
-v nexus-data:/nexus-data mounts a Docker volume for persistent storage.
4.  Access Nexus Repository Manager
5. Open a web browser and go to http://localhost:8081.

6.This is the URL where Nexus Repository Manager will be accessible.
7. click on sign in 

