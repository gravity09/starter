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
        junit 'pipeline test/test_result.xml'
        junit 'pipeline test/pep8.out'
        cobertura autoUpdateHealth: false, autoUpdateStability: false, coberturaReportFile: 'pipeline test/coverage.xml', conditionalCoverageTargets: '70, 0, 0', failUnhealthy: false, failUnstable: false, lineCoverageTargets: '80, 0, 0', maxNumberOfBuilds: 0, methodCoverageTargets: '80, 0, 0', onlyStable: false, sourceEncoding: 'ASCII', zoomCoverageChart: false
      }
   } 
}
