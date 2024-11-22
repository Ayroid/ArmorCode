pipeline {
    agent any
    stages {
        stage('Pull Code') {
          steps {
            git url: 'https://github.com/Ayroid/ArmorCode', credentialsId: 'github'
          }
        }
      stage('Build & Run Docker') {
        steps {
          script {
            docker build -t armorcode . && docker run -d -p 8080:80 armorcode
          }
        }
      }
    }
}
