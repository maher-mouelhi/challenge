pipeline {
    agent any 

    stages {
        stage('Build') {
          steps {
                 echo 'building.....'
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

       stage('Deploy Elastic to Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "k8s/elastic/", kubeconfigId: "kubernetes")

              }
            }
          }


      stage('Deploy Filebeat to Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "k8s/filebeat/", kubeconfigId: "kubernetes")
              }
            }
          }


        stage('Deploy Kibana to Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "k8s/kibana/", kubeconfigId: "kubernetes")
              }
            }
          }



       stage('Deploy Logstash to Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "k8s/logstash/", kubeconfigId: "kubernetes")
              }
            }
          }


        stage('Deploy Nginx to Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "k8s/nginx/", kubeconfigId: "kubernetes")
              }
            }
          }


  }

}
