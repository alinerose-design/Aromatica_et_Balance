pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/alinerose-design/Aromatica_et_Balance.git'
            }
        }

        stage('Test Docker') {
            steps {
                sh 'docker version'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t aromatica-app .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh 'docker run -d -p 8082:80 aromatica-app || true'
            }
        }
    }
}
