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
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Test..'
            }
        }
    }
}