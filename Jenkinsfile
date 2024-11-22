pipeline {
    agent any
    stages {
      stage('Pull Code') {
        steps {
          git 'https://github.com/Ayroid/ArmorCode.git'
          }
        }
      }
      stage('Build Docker Image') {
        steps {
          script {
            docker build -t armorcode .
          }
        }
      }
      stage('Run Docker Container') {
        steps {
          script {
            docker run -d -p 8080:80 armorcode
          }
        }
      }
    }
