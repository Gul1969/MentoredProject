pipeline {
	agent any
	stages {
		stage("Check and Install Docker with Ansible"){
			steps {
				sh "./scripts/playbook.yaml"
			}
		}
		stage("Load Nexus on port 8081 and Repo on 8082"){
			steps {
				sh "./scripts/installnexus.sh"
			}
		}
		stage("Build images with docker-compose"){
			steps{
				sh "./scripts/build.sh"
			}
		}
		stage("Push image to Nexus Repository 8082"){
			steps{
				sh "./scripts/run.sh"
			}
		}
		stage("Run containers with recently build images"){
			steps{
				sh "./scripts/run.sh"
			}
		}
	}
}
