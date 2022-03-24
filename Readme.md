## Docker commands
------------------------------
* Get running container\
`docker ps `\
`docker --all`
* Start container\
`docker start <container_Id/name>`
* Stop container\
`docker stop <container_Id/name>`\
`docker kill <container_Id/name>`
* Get inside a container\
`docker exec -it <container_Id/name> bash`\
`docker run -it <container_name> bash`
* Remove all images at once\
  `docker images -q`
  (List all docker container id's)\
  `docker rmi $(docker images -q)`
  - rmi : remove images
#### Docker exec
- docker exec [OPTIONS] [CONTAINER_NAME] [COMMAND] [ARG...]
- Options :
  - -d : Detached mode: run command in the background
  - --detach-keys : Override the key sequence for detaching a container
  - -e : Set environment variables
  - --env-file : Read in a file of environment variables
  - -u : Username or UID (format: <name|uid>[:<group|gid>])
  - -w : Working directory inside the container
  - -it : interactive env
   
  - EX : `docker exec -it -e VAR=1 ubuntu_bash bash`

#### Step to create docker container
* Step 1 install os
* Step 2 install a software
* Step 2.5 configure that software
* Step 3 set default command

#### Custom container name
`docker build . -t <container name>`\
`docker build . -t [docker acc user name]/<container name>:[tag]`\
Run container\
`docker run <container name>`

#### Containerize real world project
- Bring base image
- Create a working dir
- Bring all files
- Run installer
- Set default command
