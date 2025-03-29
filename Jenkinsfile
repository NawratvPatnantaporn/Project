pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                print "Checkout"
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[credentialsId: 'nawarat', url: 'https://github.com/NawratvPatnantaporn/Project.git']]
                ])
                print "Checkout Success"
            }
        }
        stage('Build') {
            steps {
                echo "Docker Build Image"
                script {
                sh "docker build -t Project_WRU ."
                echo "Docker Build Image Success"
                }

                echo "Docker Image Run Container"
                script {
                    sh "docker rm -f Project_WRU-run || true"
                    sh "docker run -d --name Project_WRU -p 54100:3000 Project_WRU"
                    echo "Docker Image Run Container Success"
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Test..'
            }
        }
    }
}
