pipeline {
    agent {
        node {
            label "slave-label-1"
        }
    }
    environment {
        PATH='/opt/apache-maven-3.9.6/bin:$PATH'
    }
    stages {
        stage ('CheckOut Code') {
            steps {
                echo "______________Check_Out_Started______________"
                git branch: "main" , url: "https://github.com/Bicky7735369355/java-web-app.git"
                echo "______________Check_Out_End______________"
            }
        }
        stage ('Build Code') {
            steps {
                echo "_________________Build_started____________________"
                sh "mvn clean package "
                echo "_________________Build_End______________________"
            }
        }

    }
}
