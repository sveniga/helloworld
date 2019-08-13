pipeline {
  agent any
  stages {
    stage('start') {
      steps {
        echo 'Start'
      }
    }
    stage('Deploy') {
      steps {
        sh '''ssh ubuntu@54.236.219.96
docker container rm -f vigilant_kilby 
docker run -itd --name vigilant_kilby sveniga:$BUILD_NUMBER'''
      }
    }
  }
}
