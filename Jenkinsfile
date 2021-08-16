pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git(url: 'https://github.com/DadouneDa/node-hello.git', branch: 'master', changelog: true, poll: true, credentialsId: 'dd_github')
      }
    }

  }
}