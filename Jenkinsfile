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
             sh 'sudo docker run -it localhost/webapp:latest -name=webappctr'
             sh 'echo Running Tests'
             sh 'sudo docker stop webappctr' 
          }
       }
       stage('Publish') {
         steps {
            sh 'echo publish'
         }
       }
    }
}
