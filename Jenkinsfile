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
              kubernetesDeploy(configs: "kube-logging.yaml", kubeconfigId: "kubernetes")
              }
            }
          }

       stage('Deploy Elastic to Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "elasticsearch_statefulset.yaml", kubeconfigId: "kubernetes")
              }
            }
          }

       stage('Deploy Elastic service to Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "elasticsearch_svc.yaml", kubeconfigId: "kubernetes")
              }
            }
          }



       stage('Deploy Filebeat to Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "filebeat.yaml", kubeconfigId: "kubernetes")
              }
            }
          }

        stage('Deploy Kibana to Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "kibana.yaml", kubeconfigId: "kubernetes")
              }
            }
          }

       stage('Deploy Logstash to Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "logstash.yaml", kubeconfigId: "kubernetes")
              }
            }
          }

       stage('Deploy Nginx to Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "nginx.yaml", kubeconfigId: "kubernetes")
              }
            }
          }





  }

}
