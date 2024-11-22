pipeline {
    agent any
    stages {
        stage('Pull Code') {
          steps {
            git url: 'https://github.com/Ayroid/ArmorCode', credentialsId: 'github'
          }
        }
    stage('Build Docker Image') {
      steps {
        script {
          docker.build('armorcode')
        }
      }
    }
    stage('Run Docker Container') {
      steps {
        script {
          docker.image('armorcode').run('-p 8080:80')
        }
      }
    }
    }
}
