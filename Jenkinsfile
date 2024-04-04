pipeline {
    agent { label 'slave-node-label || slave-node-2-label'}
    stages {
        stage ('checkoutcode') {
            steps{
                git branch: 'main' , url: 'https://github.com/Bicky7735369355/java-web-app.git'
            }
        }
        stage ('buildcode'){
            steps{
                sh '/opt/maven/bin/mvn clean package'
            }
        }
        
    }
}
