pipeline {
    agent none
    stages {
        stage('Test') {
            agent { dockerfile true }
            steps {
                echo "I'm executing in node: ${env.NODE_NAME}"
                sh 'node --version'
                sh 'svn --version'
            }
        }
    }
}