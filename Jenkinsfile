pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'echo Something new > /tmp/v'
                sh 'id >> /tmp/v'
                sh 'docker-compose -v >> /tmp/v'
                sh 'pwd >> /tmp/v'
                sh 'docker rm -f webNode1'
                sh 'docker-compose -f docker-compose.yml up -d'
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
        stage('Tear down') {
            steps {
                echo 'Tear down....'
                sh 'docker rm -f webNode1'
            }
        }        
    }
}



