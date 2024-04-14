pipeline {
    agent any
    
    stages {
        stage('checkout code') {
            steps {
                git branch: 'main', url: 'https://github.com/Bicky7735369355/java-web-app-ashok-it.git'
            }
        }
        stage('build code') {
            steps {
                sh '/opt/maven/bin/mvn clean package'
            }
        }
        stage('Deployment'){
			      steps{
				deploy adapters: [ tomcat9(url: 'http://34.240.2.71:8080/', credentialsId: 'tomcatcred')], war:'target/*.war'
			      }
		    }

    }
}
