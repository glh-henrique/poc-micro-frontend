pipeline {
    agent any
    tools {nodejs 'nodeJs'}
    stages {
        stage("install packages") {
            steps {
                echo 'install packages...'
                sh 'npm install --g lerna'
                sh 'rm -rf node_modules'
                sh 'git pull origin master'
                sh 'git submodule foreach git pull origin master'
                sh 'npm install'
            }
        }
        stage("test") {
            steps {
                echo 'testing application...'
                sh 'lerna run test --stream'
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