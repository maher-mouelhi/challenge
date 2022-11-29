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

       stage('Deploy Elastic to Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "k8s/elastic/statefulSet.yaml", kubeconfigId: "kubernetes")
              }
            }
          }

       stage('Deploy Elastic service to Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "k8s/elastic/service.yaml", kubeconfigId: "kubernetes")
              }
            }
          }


       stage('Deploy Filebeat to Kubernetes') {
          steps {
            script {
              kubernetesDeploy(configs: "k8s/filebeat/configmap.yaml", kubeconfigId: "kubernetes")
              kubernetesDeploy(configs: "k8s/filebeat/daemonset.yaml", kubeconfigId: "kubernetes")

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
