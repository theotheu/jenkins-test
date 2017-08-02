pipeline {
  agent none
  stages {
    stage('Run container') {
      steps {
        node(label: 'Run container') {
          sh 'docker-compose  -f docker-compose.yml up -d'
        }
        
      }
    }
    
    stage('first stage') {
      steps {
        echo '1st stage, 1st step, nothing really'
      }
      post {
        success {
          echo 'Only when we haven\'t failed running the first stage'
          
        }
        
        failure {
          echo 'Only when we fail running the first stage.'
          
        }
        
      }
    }
    stage('second stage') {
      steps {
        echo 'This time, the Maven version should be 3.3.9'
        sh 'mvn -version'
      }
    }
    stage('third stage') {
      steps {
        parallel(
          "one": {
            echo 'I\'m on the first branch!'
            
          },
          "two": {
            echo 'I\'m on the second branch!'
            
          },
          "three": {
            echo 'I\'m on the third branch!'
            echo 'But you probably guessed that already.'
            
          }
        )
      }
    }
  }

  post {
    always {
      deleteDir()
      
    }
    
    success {
      mail(from: 'theo.theunissen1@gmail.com', to: 'theo.theunissen@gmail.com', subject: 'That build passed.', body: 'Nothing to see here')
      
    }
    
    failure {
      mail(from: 'theo.theunissen1@gmail.com', to: 'theo.theunissen@gmail.com', subject: 'That build failed!', body: 'Nothing to see here')
      
    }
    
  }
  options {
    buildDiscarder(logRotator(numToKeepStr: '10'))
    timeout(time: 60, unit: 'MINUTES')
  }
}