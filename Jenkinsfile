pipeline {
    agent any

    stages {
        stage('Install Dependencies') {
            steps {
                bat '"C:\\Program Files\\Python313\\Scripts\\pip.exe" install -r requirements.txt'
            }
        }

        stage('Run Unit Tests') {
            steps {
                bat '"C:\\Program Files\\Python313\\python.exe" -m unittest discover'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t flask_app_cicd_image .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker run -d -p 5000:5000 flask_app_cicd_image'
            }
        }
    }
}

