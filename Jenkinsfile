pipeline {
    agent any
    tools {nodejs 'nodeJs'}
    stages {
        stage("build") {
            steps {
                echo 'building application...'
                sh 'npm install -g yarn'
                sh 'git pull origin master'
                sh 'git submodule update --recursive --init --remote'
                sh 'npm install'
                sh 'yarn run test'
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