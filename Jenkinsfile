pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/alinerose-design/Aromatica_et_Balance.git'
            }
        }

        stage('Run Build/Tests') {
            steps {
                bat 'echo Build or test your project here'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t alinerose/aromatica-app .'
            }
        }

        stage('Login Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    bat 'echo %PASS% | docker login -u %USER% --password-stdin'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                bat 'docker push alinerose/aromatica-app'
            }
        }

        stage('Deploy Container') {
            steps {
                bat 'docker run -d -p 8082:80 alinerose/aromatica-app || exit 0'
            }
        }
    }
}
