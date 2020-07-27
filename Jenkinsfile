pipeline {
   agent any

   stages {
       
      stage('Build') {
        steps {
          echo 'Building...'
          echo "Running ${env.BUILD_ID} ${env.BUILD_DISPLAY_NAME} on ${env.NODE_NAME} and JOB ${env.JOB_NAME}"
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
       sshagent(credentials : ['sshjenkins']) {
           sh 'ssh -i ~/.ssh/trent-vm_key.pem -o StrictHostKeyChecking=no AzureUser@52.186.170.102'
           sh 'docker ps'
       }
     }
   }
  }
}