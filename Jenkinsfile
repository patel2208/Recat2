pipeline {
  environment {
    registry = '533267104339.dkr.ecr.us-east-2.amazonaws.com'
    registryCredential = 'awsconfig'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Building image') {
      steps {
        script {
          dockerImage = docker.build("${registry}:${env.BUILD_NUMBER}")
        }
      }
    }
    stage('Deploy image') {
      steps {
        script {
          docker.withRegistry("https://${registry}", registryCredential) {
            dockerImage.push()
            dockerImage.push("latest")
          }
        }
      }
    }
  }
  post {
    cleanup {
      script {
        dockerImage.cleanUp()
      }
    }
  }
}
