pipeline {
    agent any
    stages {
        stage('Clear workspace') {
            steps {
                deleteDir()
            }
        }
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/fhilliprodrigues/docker_jenkins.git', branch: 'main'
            }
        }
        stage('Delete running container and image') {
            steps {
                sh 'docker rm -f webapp && docker rmi webapp'
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
                    dockerImage.run("-p 80:80 --name webapp -v vol-webapp:/usr/share/nginx/html")
                }
            }
        }
    }
}
