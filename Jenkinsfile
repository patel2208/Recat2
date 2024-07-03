pipeline{

    agent any
    stages{
        stage('Checkout'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/patel2208/Recat2.git']])
            }
        }
    }
}