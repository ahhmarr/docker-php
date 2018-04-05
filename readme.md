## Docker Image for php with nginx

### How to run

* clone the repo
* run `docker build -t ahhmarr/php-nginx .`
* run `docker run -d --name php-docker -p 80:80 ahhmarr/php-nginx`

to logging in with bash simple run `docker exec -it php-docker bash`
