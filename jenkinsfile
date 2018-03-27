pipeline {
    agent {
        label 'jenkins-slave'
    }
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t gravity2017/mmp:ravi03 .'
                sh 'docker run -itd --name=sample03 gravity2017/mmp:ravi03'
                sh 'docker logs sample03'
                
            }
        }
    }
}
