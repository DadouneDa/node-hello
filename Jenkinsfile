pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git(url: 'https://github.com/DadouneDa/node-hello.git', branch: 'master', changelog: true, poll: true, credentialsId: 'dd_github')
      }
    }

    stage('build docker image') {
      steps {
        sh 'docker build . -t node-hello:$BUILD_ID'
      }
    }

    stage('Push Docker image') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url: 'https://index.docker.io/v2/'){
        sh '''docker tag node-hello:$BUILD_ID ddadoune/node-hello:$BUILD_ID && docker tag node-hello:$BUILD_ID ddadoune/node-hello:latest && docker push ddadoune/node-hello:$BUILD_ID && docker push ddadoune/node-hello:latest'''
      }
    }
    }

  }
}
