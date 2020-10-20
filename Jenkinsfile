pipeline {
    agent any
    environment {
        NEW_VERSION = '1.3.0'
    }
    tools {nodejs 'nodeJs'}
    stages {
        stage("build") {
            steps {
                echo 'building application...'
                echo "building version ${NEW_VERSION}"
                sh 'git submodules update'
                sh 'npm run test'
            }
        }

        stage("test") {
            steps {
                echo 'testing application...'
            }
        }

        stage("deploy") {
            steps {
                echo 'deployng application...'
            }
        }
    }
}