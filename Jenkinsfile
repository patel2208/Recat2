pipeline{

environment {
        registry = "533267104339.dkr.ecr.us-east-1.amazonaws.com/react3"
    }
    agent any
    stages{
        stage('Checkout'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/patel2208/Recat2.git']])
            }
        }
        stage('Docker Build'){
            steps{
                script{
                   dockerImage = docker.build registry
                }
            }
        }
    }
}