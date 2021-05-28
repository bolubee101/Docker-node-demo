# The "FROM" command indicates where the base image for the docker image to be built is from.
# By default it is from Docker hub
# In this case, the nodejs official image, version 14 is being pulled
FROM node:14

# The "WORKDIR" command is used to specify the working directory of the containers that would be spun from the image
WORKDIR /app

# The "COPY" command directs docker to copy the content of one folder(dockerapp) to another(app)
# In this case all the files in dockerapp would be copied to the working directory in the docker image
COPY dockerapp /app

# This specifies the command that would be run while building the new image.
# In this case we would be installing our server dependencies ontop of the previous image
RUN npm install

# The "CMD" command specifies the command that would be run when a container is to be run.
# In this case, the server would be started as specified in the package.json
CMD npm start

# The "EXPOSE" command is used to indicate the port in the container that can be open to the network
EXPOSE 3000