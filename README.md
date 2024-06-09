how to setup nexus in winodws/using doker
docker pull sonatype/nexus3
docker run -d -p 8081:8081 --name nexus -v nexus-data:/nexus-data sonatype/nexus3
-d runs the container in detached mode.
-p 8081:8081 maps port 8081 on the host to port 8081 on the container.
--name nexus names the container "nexus".
-v nexus-data:/nexus-data mounts a Docker volume for persistent storage.
 Access Nexus Repository Manager
Open a web browser and go to http://localhost:8081.

This is the URL where Nexus Repository Manager will be accessible.
