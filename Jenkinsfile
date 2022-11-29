pipeline {
    agent any 
    stages {
        stage('Build') {
            steps {
                echo 'building!' 
            }
        }
        stage('Test') {
            steps {
                echo 'testing' 
            }
        }
        stage('Deploy') {
            steps {
                echo 'deploying!'
                sh 'kubectl --kubeconfig=/home/maher/.kube/ create ns test-project'
 
            }
        }
    }
}
