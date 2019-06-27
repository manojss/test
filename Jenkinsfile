pipeline {
    agent any
    stages {
       stage('Build') {
          steps {
              sh 'echo $WORKSPACE'
              sh 'chown -R ec2-user:ec2-user $WORKSPACE'
              sh 'docker build -t webapp .'
          }
       }
       stage('Test') {
          steps {
             sh 'docker run localhost/webapp:latest'
          }
       }
       stage('Publish') {
         steps {
            sh 'echo publish'
         }
       }
    }
}
