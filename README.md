## DevOps Project for Beginners   

[![Image](https://github.com/yankils/Simple-DevOps-Project/blob/master/Devops_course.PNG "DevOps Project - CI/CD with Jenkins Ansible Docker Kubernetes ")](https://www.udemy.com/course/valaxy-devops/?referralCode=8147A5CF4C8C7D9E253F)
-----------------------
---
- hosts: all
  become: true
  tasks:
    - name: stop previous verison docker
      shell: docker stop webapp
    - name: removed stop container
      shell: docker rm -f webapp
    - name: remove docker images
      shell: docker image rm -f raghib1992/devops_project:latest
    - name: create docker container
      shell: docker run -itd --name webapp -p 8090:8090 raghib1992/devops_project:latest


---------------------------------------------------
cd /opt/docker
docker build -t $JOB_NAME:$v1.$BUILD_ID 
docker tag $JOB_NAME:v1.$BUILD_ID raghib1992/$JOB_NAME:v1.$BUILD_ID
docker tag $JOB_NAME:v1.$BUILD_ID raghib1992/$JOB_NAME:latest
docker push raghib1992/$JOB_NAME:v1.$BUILD_ID
docker push raghib1992/$JOB_NAME:latest
docker rmi $JOB_NAME:v1.$BUILD_ID raghib1992/$JOB_NAME:v1.$BUILD_ID raghib1992/$JOB_NAME:latest
