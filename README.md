# docker-firebase-tools
docker image for firebase tools, emulator 

## useage
```
/home/firebase-emulator 

docker run -d -p 9199:9199 -p 9099:9099 -p 9005:9005 -p 9000:9000 -p 8085:8085 -p 8080:8080 -p 5001:5001 -p 5000:5000 -p 4000:4000 -v /root/compose/firebase:/home/firebase-emulator coldwow/docker-firebase-tools

docker run -d -p 9199:9199 -p 9099:9099 -p 9005:9005 -p 9000:9000 -p 8085:8085 -p 8080:8080 -p 5001:5001 -p 5000:5000 -p 4000:4000  coldwow/docker-firebase-tools
```