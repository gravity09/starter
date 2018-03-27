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
                sh 'docker cp sample03:/data/coverage.xml .'
                sh 'docker cp sample03:/data/test_report.xml .'
                sh 'docker cp sample03:/data/pep8.out .'
                sh 'x=$(cat test_report.xml | sed -e 's/.*failures=\"//;s/\" name.*//')'
                sh 'if [ $x -eq 0 ]; then docker push gravity2017/mmp:ravi03 ; fi'
                sh 'sleep 3m'
            }
        }
    }
}
