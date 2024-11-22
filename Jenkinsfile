// Jenkins file to pull code from https://github.com/Ayroid/ArmorCode.git and build the dockerfile and run the container

pipeline {
    agent any
    stages {
        stage('Pull Code') {
          steps {
            git 'https://github.com/Ayroid/ArmorCode.git'
          }
        }
        stage('Build Docker Image') {
          steps {
            script {
              dockerImage = docker.build('armorcode')
            }
          }
        }
        stage('Run Docker Container') {
          steps {
            script {
              dockerImage.inside('-p 8080:80') {
                sh 'echo "Docker Container is running"'
              }
            }
          }
        }
    }
}
