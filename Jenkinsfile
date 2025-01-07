pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Semkufu95/DevOps_automation.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('DevOps_automation:latest')
                }
            }
        }
        stage('Run Tests') {
            steps {
                sh 'npm test'
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.run('-d -p 8080:8080 DevOps_automation:latest')
                }
            }
        }
    }
}