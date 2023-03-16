# redis_setup_ex_docker
Example setup of Redis container

**DO NOT FORGET TO CHANGE USERNAME AND PASSWORD in redis.conf file
(line 683) !!!**

**Build Image**

```docker build -t video_server .```

**How To Run:**

docker run -p 6379:6379 -v test_redis_db:/usr/src/app --name test_redis -d --network test_net test_redis

**HOWTO redis-cli:**

1. docker exec -it new_snod_redis sh

2. redis-cli

**HOWTO login to redis-cli :**

1. redis-cli

2. AUTH 'login' 'password'    # words should be in quotes

**HOWTO exit redis-cli :**

1. Ctrl + C

2. exit + press Enter
