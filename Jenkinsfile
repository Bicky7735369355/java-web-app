node ('any'){
    stage ('checkoutcode'){
        git branch: 'main' , url: 'https://github.com/Bicky7735369355/java-web-app.git'

    }
    stage ('buildcode'){
        sh '/opt/maven/bin/mvn clean package'
    }
    stage ('deploy to container'){
        deploy adapters: [tomcat9(url:'http://54.216.142.235:8080/' , credentialsId: 'tomcatcred')] , war: '**/*.war'
    }
}