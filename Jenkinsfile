pipeline {
	agent {
		node {
			label 'slave-label-1'
		}
	}
	stages {
		stage (CheckOutcode) {
			steps {
				git branch: "git", url:"https://github.com/Bicky7735369355/java-web-app.git"
			}
		}
	}
}
