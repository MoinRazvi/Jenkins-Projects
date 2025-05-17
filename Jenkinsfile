pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/MoinRazvi/Jenkins-Projects.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def imageName = "jenkins-add-script:latest"
                    sh "docker build -t ${imageName} ."
                }
            }
        }
    }
}
