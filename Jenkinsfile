pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                echo "I'm executing in node: ${env.NODE_NAME}"
                sh 'node --version'
                sh 'svn --version'
            }
        }
    }
}