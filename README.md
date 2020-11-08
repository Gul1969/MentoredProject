# Mentored Project

## Be competent in the use of Ansible, Jenkins, NGINX, Docker, SAST and DAST testing 

### Why are we doing this?

This project is an excellent vehicle to test, challenge and put into practice the full range of skills that we learned throughout the first 4 weeks of the QA bootcamp. The brief for this task was to deploy a python application composed of 4 separate services simply labelled service 1, 2, 3 and 4. 

Service-2 generated 5 random lower-case letters, these were also listed at port 5001. 

![Apps run](/Metrics/service2_port5001.png)

Simultaneously service-3 generated 5 random numbers in the range 0 to 9, these were listed at port 5002. 

![Apps run](/Metrics/service3_port5002.png)

Both of these services also output their data to service-4 which generated a random username from the characters presented and proceeded to output this to service-1. Service-1 then posted the username to port 5000 and decided if the posted username was worthy of a prize, if yes it posted the amount of prize money won.

![Apps run](/Metrics/App_running_on_port_5003.png)

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

I looked forward to the challenge of the task as it was an opportunity to combine everything learned so far. I had an overall idea of how I was going to put together the tools and considered a few options. Looking at the brief it was obvious that Docker would be used to containerise the 4 services and Docker-compose would be necessary for the various containers to communicate. 

![docker](/Metrics/Services_containered.png)

I expected Ansible to be the obvious choice to deploy Docker, Docker-compose as well as the 4 services via a playbook. It was necessary to create a Dockerfile per service which I wrote into each service directory. I had to decide how I was going to deploy Jenkins and it made more sense to install it on the Virtual Machine (VM) and use a Jenkinsfile pipeline to setup Ansible, Docker, Docker-compose and containerise the services, perform SAST tests, perform unit tests, build the images, tag and push them to Nexus and finally run the latest build. This would mean I had fulfilled the primary brief. I was confident that I could achieve this, especially as I had access to each of the tutorial demo’s which I referred to frequently during the project. I also expected I would hit road blocks along the way but had the piece of mind of knowing I could get assistance from cohort colleagues as well as our QA tutor Ben. 

### What went well? 

Formulating a strategy at the beginning meant I could build a roadmap to the end goal, I found that the one I selected to follow outlined above worked very well for me. I was able to understand the brief quickly and having a roadmap to work to meant I could break the problem down into separate individual tasks to make these worked in isolation. Subsequently once I verified each prior step functioned I was able to then string each step together into a Jenkins pipeline. Following this it was necessary to configure Jenkins, Sonarqube and Nexus to meet the requirements of the brief. Each of these steps were tackled with varying success, some parts requiring longer to complete than others. Where blockers were encountered I found that when I sought assistance from colleagues, help came rapidly and blocks were removed effectively. As a side-effect these were opportunities to fill knowledge gaps and I was also able to help when a request came for assistance. A very effective method of working collaboratively was the setting up of a Teams group with comprising of the 6 members of my line and task manager group, we named ourselves “The Sixpack”. This was set up to promote team cohesion through social interaction but served as an effective means whereby we were able to quickly share knowledge or help each other move our projects along.

### What didn't go as planned? 

When I started the project, I intended to complete the stretch goals as well, these included:
-	Use NGINX as a reverse proxy
-	Version Docker images
-	Include DAST Testing and Artefact Scanning
However, the project progressed at a slower rate than I anticipated over the 4-week period. Some of this stemmed from additional time spent reviewing relevant tutorial demos. The VM’s we used automatically reset every weekend so that by every Monday the terminals had to be re-configured with pre-requisite installations that included:

-	Git
-	Curl
-	Vim
In addition, in the first few weeks it was necessary to repeatedly install:
-	Python-pip
-	Python3
-	Jenkins
-	Docker
-	Docker-compose
-	Ansible
-	Nexus

These pre-requisite steps were necessary at the early stages in order to make sure all the individual steps of the project worked so they could confidently be strung together in a pipeline later. Repeated installation was also necessary when the VM internet connections failed, it was necessary to reset or reboot the VM. On some occasions this also wiped the VM of any pre-configurations which also slowed down progress. In particular in the last week of the project VM resets and connection issues were more frequent. Unfortunately this issue was common to many of my colleagues and no satisfactory solution was found. The added delays meant that the stretch goals were not completed in the 4 week timeframe.

![connection](/Metrics/Connection_died.png)

### Possible improvements for future challenges.

I recognise that I focused at the early stages on creating a script to automate the pre-requisite stages of the project in configuring a fresh VM. In hindsight this did not save me as much time as I anticipated it might. In future in similar circumstances it might be best to ask colleagues if an automated solution has already been arrived at. Alternatively, best practice may include devoting a limited amount of the time budget to explore a solution, beyond this limit a solution may not free-up enough additional time to be worthwhile. I would love to have had time to tackle the stretch goals but time was the constraint. 

![connection](/Metrics/VM_connection.png)



# Reports

### Testing Coverage
Code coverage is the percentage of code which is covered by automated tests. In general, a code coverage system collects information about the running program and then combines that with source information to generate a report on the test suite's code coverage. Pytest is a framework that makes building simple and scalable tests easy. Code coverage of 70-80% is a reasonable goal for system test of most projects with most coverage metrics. Coverage tests for this project were carried out by a pytest module utilising --cov. The unit test reports are presented below, a report was generated for the code in each service:


#### Service-1 test report:
![pytests](/Metrics/pytest_coverage_service1.png)





#### Service-2 test report:
![pytests](/Metrics/pytest_coverage_service2.png)





#### Service-3 test report:
![pytests](/Metrics/pytest_coverage_service3.png)





#### Service-4 test report:
![pytests](/Metrics/pytest_coverage_service4.png)





### Deployment Success


### Build Logs


### Security Risks


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
  
