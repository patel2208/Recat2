pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                // Get AWS ECR login password and login to Docker
                script {
                    def dockerLogin = sh(script: 'aws ecr get-login-password --region us-east-2', returnStdout: true).trim()
                    sh "echo \${dockerLogin} | docker login --username AWS --password-stdin 533267104339.dkr.ecr.us-east-2.amazonaws.com"
                }
                
                // Build Docker image
                sh "docker build -t react2 ."
                
                // Tag Docker image
                sh "docker tag react2:latest 533267104339.dkr.ecr.us-east-2.amazonaws.com/react2:latest"
            }
        }
        
        stage('Push to ECR') {
            steps {
                // Push Docker image to ECR
                sh "docker push 533267104339.dkr.ecr.us-east-2.amazonaws.com/react2:latest"
            }
        }
    }
}
