pipeline {
    agent any
    tools {nodejs 'nodeJs'}
    stages {
        stage("build") {
            steps {
                echo 'building application...'
                sh 'rm -rf node_modules'
                sh 'git pull origin master'
                sh 'git submodule update --recursive --init --remote'
                sh 'npm install'
                sh 'yarn workspaces run test'
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