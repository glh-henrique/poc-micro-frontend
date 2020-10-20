pipeline {
    agent any
    tools {nodejs 'nodeJs'}
    stages {
        stage("test") {
            steps {
                echo 'testing application...'
                sh 'rm -rf node_modules'
                sh 'git pull origin master'
                sh 'git submodule foreach git pull origin master'
                sh 'npm install'
                sh 'lerna run test'
            }
        }

        stage("build") {
            steps {
                echo 'building application...'
                sh 'yarn workspaces run build'
            }
        }

        stage("deploy") {
            steps {
                echo 'deployng application...'
            }
        }
    }
}