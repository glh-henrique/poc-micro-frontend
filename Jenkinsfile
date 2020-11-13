#!/bin/groovy
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
                sh 'lerna bootstrap'
            }
        }
        stage("test") {
            steps {
                echo 'testing application...'
            }
        }

        stage("build") {
            steps {
                echo 'building application...'
                sh 'pwd'
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