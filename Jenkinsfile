pipeline {
    agent any
    stages {
        stage ('checkoutcode') {
            steps{
                git branch: 'main' , url: ''
            }
        }
        stage ('buildcode'){
            steps{
                sh '/opt/maven/bin/mvn clean package'
            }
        }
        stage ('deploy to tomcat') {
            steps {
                deploy adapters: [tomcat9 (url:'http://54.216.142.235:8080/' , credentialsId: 'tomcatcred')] , war: '**/*.war'
            }
        }

    }
}
