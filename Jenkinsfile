pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                bat "mvn clean"
            }
        }
        stage('test') {
            steps {
                bat "mvn test"
                echo "Testing Completed"
            }
        }
        stage('deploy') {
            steps {
                bat "mvn package"
                echo "Deployment Completed"
            }
        }
    }
}
