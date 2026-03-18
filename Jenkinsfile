pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/alinerose-design/Aromatica_et_Balance.git'
            }
        }

        // ✅ AJOUT ICI
        stage('Test Docker') {
            steps {
                sh 'docker version'
            }
        }

        stage('Run Build/Tests') {
            steps {
                sh 'echo "Build or test your project here"'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t alinerose/aromatica-app .'
            }
        }

        stage('Login Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh 'echo $PASS | docker login -u $USER --password-stdin'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                sh 'docker push alinerose/aromatica-app'
            }
        }

        stage('Deploy Container') {
            steps {
                sh 'docker run -d -p 8082:80 alinerose/aromatica-app || true'
            }
        }
    }
}
