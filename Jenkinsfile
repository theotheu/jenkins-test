pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
//                sh 'docker-compose  -f docker-compose.yml up -d'
                sh 'docker-compose  -v > /home/theotheu/v'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
