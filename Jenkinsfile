pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Clone Repo') {
            steps {
                  git branch: 'main', url: 'https://github.com/MoinRazvi/Jenkins-Projects.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def imageName = "my-add-script-image:latest"
                    sh "docker build -t ${imageName} ."
                }
            }
        }
    }
}
