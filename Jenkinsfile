pipeline {
    agent any
    tools {nodejs 'nodeJs'}
    stages {
        stage("build") {
            steps {
                echo 'building application...'
                sh 'rm -rf node_modules'
                sh 'git pull origin master'
                sh 'git submodule foreach git pull origin master'
                sh 'lerna boostrap'
            }
        }

        stage("test") {
            steps {
                echo 'testing application...'
                sh 'lerna run test'
            }
        }

        stage("deploy") {
            steps {
                echo 'deployng application...'
            }
        }
    }
}