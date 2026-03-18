pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'alinerose/aromatica-web'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/alinerose-design/Aromatica_et_Balance.git'
            }
        }

        stage('Flutter Build') {
            steps {
                bat 'flutter pub get'
                bat 'flutter build web'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t %DOCKER_IMAGE% .'
            }
        }

        stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    bat 'echo %PASS% | docker login -u %USER% --password-stdin'
                    bat 'docker push %DOCKER_IMAGE%'
                }
            }
        }

        stage('Deploy Container') {
            steps {
                bat 'docker stop aromatica-web || exit 0'
                bat 'docker rm aromatica-web || exit 0'
                bat 'docker run -d -p 8082:80 --name aromatica-web %DOCKER_IMAGE%'
            }
        }
    }
}
