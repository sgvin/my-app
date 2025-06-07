pipeline {
  agent any

  environment {
    IMAGE_NAME = "your-dockerhub-username/my-node-app"
  }

  stages {
    stage('Clone Repo') {
      steps {
        git 'https://github.com/<your-username>/my-app.git'
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          docker.build("${IMAGE_NAME}:latest")
        }
      }
    }

    stage('Push to Docker Hub') {
      steps {
        withDockerRegistry([credentialsId: 'dockerhub-creds', url: '']) {
          script {
            docker.image("${IMAGE_NAME}:latest").push()
          }
        }
      }
    }

    stage('Deploy to Kubernetes') {
      steps {
        sh 'kubectl apply -f deployment.yaml'
        sh 'kubectl apply -f service.yaml'
      }
    }
  }
}
