pipeline {
    agent {
        node {
            label "slave-label-1"
        }
    }
    stages {
        stage ('CheckOut Code') {
            steps {
                echo "______________Build_Started______________"
                git branch: "main" , url: "https://github.com/Bicky7735369355/java-web-app.git"
                echo "______________Build_End______________"
            }
        }
    }
}
