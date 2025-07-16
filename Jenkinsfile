pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/fhilliprodrigues/docker_jenkins.git', branch: 'main'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("webapp")
                }
            }
        }
        stage('Run Docker Image') {
            steps {
                script {
                    dockerImage.run("--name webapp")
                }
            }
        }
    }
}
