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
             sh 'docker run -it localhost/webapp:latest'
          }
       }
       stage('Publish') {
         steps {
            sh 'echo publish'
         }
       }
    }
}
