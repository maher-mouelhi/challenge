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
               git branch: 'main', url: 'https://github.com/maher-mouelhi/challenge.git'
            }
        }
        stage('Deploying App to Kubernetes') {
            steps {
                echo 'deploying!'
         script {
          kubernetesDeploy(configs: "k8s/namespace.yaml", kubeconfigId: "kubernetes")
            }
        }
    }
}
