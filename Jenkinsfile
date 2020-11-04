
pipeline {
	agent any
	stages {
		stage("Install Docker and Docker-Compose with Ansible"){
			steps {
				sh "./scripts/ansible.sh"
			}
		}
		stage("SAST testing using Sonarcube"){
			steps {
				sh "./scripts/sonarcube.sh"
			}
		}
		stage("Unit tests using pytest & pytest-cov"){
			steps {
				sh "./scripts/pytest.sh"
			}
		}
		stage("Docker-compose images"){
			steps{
				sh "./scripts/build.sh"
			}
		}
		stage("Images taggged & pushed to Nexus Repo at port 8082"){		
			steps{		
				sh "./scripts/push.sh"
			}
		}
		stage("Run latest build"){
			steps{
				sh "./scripts/run.sh"
			}
		}
	}
}
