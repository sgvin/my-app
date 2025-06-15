pipeline {
  agent any

  environment {
    IMAGE_NAME = "yourdockerhubusername/nodejs-cicd-app"
    SONAR_TOKEN = credentials('sonarqube-token-id')
  }

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/yourusername/nodejs-cicd-project.git'
      }
    }

    stage('SonarQube Scan') {
      steps {
        withSonarQubeEnv('SonarQube') {
          sh 'sonar-scanner'
        }
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t $IMAGE_NAME:$BUILD_NUMBER .'
      }
    }

    stage('Push Docker Image') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'docker-hub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
          sh '''
            echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
            docker push $IMAGE_NAME:$BUILD_NUMBER
          '''
        }
      }
    }

    stage('Deploy to Kubernetes') {
      steps {
        sh '''
          sed "s|IMAGE_PLACEHOLDER|$IMAGE_NAME:$BUILD_NUMBER|" k8s/deployment.yaml | kubectl apply -f -
          kubectl apply -f k8s/service.yaml
        '''
      }
    }
  }
}
