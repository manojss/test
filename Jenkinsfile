pipeline {
    agent any
    stages {
       stage('Build') {
          steps {
              sh 'echo $WORKSPACE'
              sh 'sudo docker build -t manojdocker2/webapp:${BUILD_NUMBER} .'
          }
       }
       stage('Test') {
          steps {
             sh 'sudo docker run -d localhost/webapp:latest'
             sh 'echo Running Tests'
          }
       }
       stage('Publish') {
         steps {
            sh 'echo publish'
            sh 'docker push manojdocker2/webapp:${BUILD_NUMBER}'
         }
       }
    }
}
