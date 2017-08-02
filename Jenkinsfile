pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
//                sh 'docker-compose  -f docker-compose.yml up -d'
                sh 'echo Something new > /tmp/v'
                sh 'id >> /tmp/v'
                sh 'docker-compose -v >> /tmp/v'
                sh 'pwd >> /tmp/v'
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

