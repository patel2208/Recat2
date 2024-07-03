pipeline {
  environment {
    registry = '533267104339.dkr.ecr.us-east-2.amazonaws.com'
    registryCredential = 'awsconfig'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy image') {
        steps{
            script{
                docker.withRegistry("https://" + registry, "ecr:us-east-2:" + registryCredential) {
                    dockerImage.push()
                }
            }
        }
    }
  }
}