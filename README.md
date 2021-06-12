### Description
This is a template for python cron job in docker. 
The cron job is very simple. It writes string to /app/result.txt every min.
 

### Build Docker Image

```
sudo docker build -t cron_python
```

### Run Container

```
sudo docker run -d --name python_cron_container cron_python
```


### Check Result

```
sudo docker exec -it python_cron_container /bin/bash

# in container bash
cat /app/result.txt
```

### Stop Container


```
sudo docker container stop python_cron_container
sudo docker container rm python_cron_container
```