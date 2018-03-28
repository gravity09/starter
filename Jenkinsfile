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
        junit '/var/jenkins/workspace/pipeline test/test_report.xml'
        junit '/var/jenkins/workspace/pipeline test/test_report.xml'
        step([$class: 'CoberturaPublisher', coberturaReportFile: '/var/jenkins/workspace/pipeline test/coverage.xml'])
      }
   } 
}
