# Mentored Project

## Be competent in the use of Ansible, Jenkins, NGINX, Docker, SAST and DAST testing 

### Why are we doing this?

This project is an excellent vehicle to test, challenge and put into practice the full range of skills that we learned throughout the first 4 weeks of the QA bootcamp. The brief for this task was to deploy a python application composed of 4 separate services simply labelled service 1, 2, 3 and 4. Service-2 generated 5 random lower-case letters, these were also listed at port 5001. Simultaneously service-3 generated 5 random numbers in the range 0 to 9, these were listed at port 5002. Both of these services also output their data to service-4 which generated a random 10 character username and proceeded to output this to service-1. Service-1 then posted the username to port 5000 and decided if the posted username was worthy of a prize, if yes it posted the amount of prize money won.

The brief also required the use of:

- Docker/Docker-compose
- Ansible
- Jenkins
- Nexus
- SAST Testing

In addition, the task included documenting as many metrics as possible and reports on them in the README file. These metrics include:

- Testing Coverage
- Deployment Success
- Build Logs
- Security Risks

This Git repository was created comprising of files containing code for the 4 services provided as well as the files created to enable the deployment. These include Dockerfiles, playbooks, reports, scripts and screen images showing project progress as well as the output of the various tools used. 


### How I expected the challenge to go. 

I looked forward to the challenge of the task as it was an opportunity to combine everything learned so far. I had an overall idea of how I was going to put together the tools and considered a few options. Looking at the brief it was obvious that Docker would be used to containerise the 4 services and Docker-compose would be necessary for the various containers to communicate. I expected Ansible to be the obvious choice to deploy Docker, Docker-compose as well as the 4 services via a playbook. It was necessary to create a Dockerfile per service which I wrote into each service directory. I had to decide how I was going to deploy Jenkins and it made more sense to install it on the Virtual Machine (VM) and use a Jenkinsfile pipeline to setup Ansible, Docker, Docker-compose and containerise the services, perform SAST tests, perform unit tests, build the images, tag and push them to Nexus and finally run the latest build. This would mean I had fulfilled the primary brief. I was confident that I could achieve this, especially as I had access to each of the tutorial demo’s which I referred to frequently during the project. I also expected I would hit road blocks but had the security of knowing I could get assistance from cohort colleagues as well as our QA tutor Ben. 

### What went well? 


### What didn't go as planned? 


### Possible improvements for future challenges.



 
## Tasks
 
Here a Python application that is made up of 4 different services.
 
- Service 1 - Central App
- Service 2 - Provides random numbers
- Service 3 - Provides random letters
- Service 4 - Create an account number (Based on info from service 2&3) and gives a prize based on that account number.
 
You are tasked with deploying this application using all the skills you have developed throughout your time in the academy.
 
Your deployment should make use of,
 
- Docker/Docker-compose
- Ansible
- Jenkins
- Nexus
- SAST Testing
 
You should keep as many metrics as possible and write up reports on them in your README file. These metrics can include.
 
- Testing Coverage
- Deployment Success
- Build Logs
- Security Risks
 
## Stretch Goals
 
1. Use NGINX as a reverse proxy
2. Version Docker images
3. Include DAST Testing and Artefact Scanning
 
## Submission
 
You should create a Git repository that contains the code for the 4 services and any files you created to deploy your application including Dockerfiles, playbooks, reports etc.
You are also expected to make a README.md file and to fill this README with information of this challenge. It should contain the following headers.
 
- Why are we doing this?
- How I expected the challenge to go.
- What went well?
- What didn't go as planned?
- Possible improvements for future challenges.
  
