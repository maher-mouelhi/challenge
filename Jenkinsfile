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


        stage('Create namespace in Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "k8s/namespace.yaml", kubeconfigId: "kubernetes")
              }
            }
          }


        stage('Deploy ELK Kubernetes') {
          steps {
            sh 'kubectl apply -f elastic/'
            }
          }





  }

}
