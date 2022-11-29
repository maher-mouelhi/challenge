pipeline {
    agent any 
    stages {
        stage('Build') {
            steps {
                echo 'building!' 
            }
        }
        stage('Checkout Source') {
            steps {
               git 'https://github.com/maher-mouelhi/challenge.git' 
            }
        }
        stage('Deploying App to Kubernetes') {
            steps {
                echo 'deploying!'
     
 
            }
        }
    }
}
