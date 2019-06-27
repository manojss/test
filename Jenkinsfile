pipeline {
    agent any
    stages {
       stage('Build') {
          steps {
              sh 'echo $WORKSPACE'
              sh 'sudo docker build -t webapp .'
          }
       }
       stage('Test') {
          steps {
             sh 'sudo docker run localhost/webapp:latest'
          }
       }
       stage('Publish') {
         steps {
            sh 'echo publish'
         }
       }
    }
}
