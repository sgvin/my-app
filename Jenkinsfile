pipeline {
  agent any

  environment {
    IMAGE_NAME = "vindoker/nodejs-cicd-app"
    SONAR_TOKEN = credentials('sonar-auth-token')
  }

  stages {
    stage('SonarQube Scan') {
      steps {
        withSonarQubeEnv('jenkins') {
          sh '''
          export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
          export PATH=/opt/sonar-scanner/bin:$PATH
          java -version
          sonar-scanner
          '''
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
        withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
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
