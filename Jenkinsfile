pipeline{

environment {
        registry = "533267104339.dkr.ecr.us-east-1.amazonaws.com/react3"
    }
    agent any
   
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
        stage('Docker Puch'){
            steps{
                script{
                     sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 533267104339.dkr.ecr.us-east-1.amazonaws.com'
                     sh 'docker push 533267104339.dkr.ecr.us-east-1.amazonaws.com/react3:latest'
                }
            }
        }
    }
