# newrelic-workspace
Notes for installing and working with New Relic instrumentation

### Amazon Linux 2 - Infra Agent Install
- sudo yum update -y
- sudo amazon-linux-extras install docker
- sudo service docker start
- sudo usermod -a -G docker cloud_user
- sudo yum install git -y
- sudo yum install htop -y
- sudo curl -o /etc/yum.repos.d/newrelic-infra.repo https://download.newrelic.com/infrastructure_agent/linux/yum/amazonlinux/2/x86_64/newrelic-infra.repo
- sudo yum install newrelic-infra -y
- curl http://download.newrelic.com/nrdiag/nrdiag_latest.zip -o nrdiag_latest.zip
- unzip nrdiag_latest.zip
- docker run --name nginx1-8000 -p 8000:80 -d --cpus=".25" --memory=100m nginx
- docker exec -it nginx1-8000 /bin/sh -c "while true; do curl http://localhost:80; date; done;"
