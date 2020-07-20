pipeline {
   agent any

   stages {
      stage('Build') {
        steps {
          echo 'Building...'
          echo "Running ${env.BUILD_ID} ${env.BUILD_DISPLAY_NAME} on ${env.NODE_NAME} and JOB ${env.JOB_NAME}"
          sh "curl -X POST http://admin:1164fe2158c256403d22d45127c097dd41@52.186.170.102:8080/job/Docker%20Test/build?token=hDacQpjFY709uI5p26i8T5Po2y223fwY"
        }
   }
   stage('Test') {
     steps {
        echo 'Testing...'
     }
   }
   stage('Deploy') {
     steps {
       echo 'Deploying...'
     }
   }
  }
}