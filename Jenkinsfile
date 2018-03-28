pipeline {
    agent {
        label 'jenkins-slave'
    }
    stages {
        stage('Build') {
            steps {
                sh 'chmod 755 commands'
                sh './commands'
            }
        }
    }
    post {
      always {
        junit '**/reports/junit/*.xml'
        step([$class: 'CoberturaPublisher', coberturaReportFile: 'target/site/cobertura/coverage.xml'])
      }
   } 
}
