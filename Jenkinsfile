pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/SimCarrington/flask_app_cicd.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Run Unit Tests') {
            steps {
                sh 'python -m unittest discover'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('flask_app_cicd_image')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 5000:5000 flask_app_cicd_image'
            }
        }
    }
}
