# Docker Zeppelin

To build the image
```bash
docker build --tag sbrouil/zeppelin .
```

To run the zeppelin on the port 8082 and the logs and notebook volumes linked to the /spark/zeppelin/notebook and /spark/zeppelin/logs host folders
```bash
docker run -it -p 8082:8080 -v /spark/notebook:/zeppelin/notebook -v /spark/zeppelin/logs:/zeppelin/logs sbrouil/zeppelin
```
