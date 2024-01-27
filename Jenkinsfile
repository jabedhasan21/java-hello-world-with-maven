pipeline{
    agent any

    stages{
        
        stage('docker'){
            sh '''
                    docker build -t $JOB_NAME:v1.$BUILD_ID .
                    docker image tag $JOB_NAME:v1.$BUILD_ID sahar449/java-app:v1.$BUILD_ID
                    docker image tag $JOB_NAME:v1.$BUILD_ID sahar449/java-app:latest
                '''
        }
        stage('docker push to docker-hub'){
            steps{
                script{ 
                        withCredentials([string(credentialsId: 'docker_hub_login', variable: 'docker_hub')]) {
                            sh '''
                                docker login -u sahar449 -p ${docker_hub}
                                docker push sahar449/tom:v1.$BUILD_ID
                                docker push sahar449/tom:latest
                             '''
                        }
                    }
                }
            }
    }
}