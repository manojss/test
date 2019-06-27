pipeline {
    agent any
    stages {
       stage('Build') {
          steps {
              sh 'echo $WORKSPACE'
              sh 'docker build -t webapp .'
          }
       }
       stage('Test') {
          steps {
             sh 'docker run localhost/webapp:latest'
          }
       }
       stage('Publish') {
       }
    }
}
