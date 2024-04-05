node {
    stage ('check out code') {
        git branch: 'main' , url: 'https://github.com/Bicky7735369355/java-web-app.git'

    }
    stage ('build code') {
        sh '/opt/maven/bin/mvn clean package'
    }
    stage ('deploy to container') {
        deploy adapters [tomcat9(url: 'http://54.154.170.31:8080' , credentialsId: 'tomcatcred' )] , war: '**/*.war'
    }
}