#!/bin/groovy
pipeline {
    agent any
    tools {
        nodejs 'nodeJs'
    }
    stages {
        stage("Checkout") {
            steps {
                checkout scm
            }
        }
        stage("Environment") {
            steps {
                sh 'git --version'
                echo "Branch: ${env.BRANCH_NAME}"
                sh 'printenv'
            }
        }
        stage("install packages") {
            agent { label 'docker'}
            steps {
                echo 'install packages...'
                sh 'docker build -t acme/app1 -f Dockerfile .'
                //sh 'npm install --g yarn'
                //sh 'npm install --g lerna'
                //sh 'rm -rf node_modules'
                //sh 'git pull origin master'
                //sh 'git submodule foreach git pull origin master'
                //sh 'lerna bootstrap'
            }
        }

        stage("test") {
            steps {
                echo 'testing application...'
                echo 'pesquisar sobre teste sem interface'
            }
        }

        stage("build") {
            steps {
                echo 'building application...'
                //sh 'pwd'
                //sh 'yarn workspaces run build'
            }
        }

        stage("deploy app1") {
            steps {
                echo 'deployng application...'
                //sh 'docker cp /var/jenkins_home/workspace/ci-teste_master/packages/poc-micro-frontend-app1/build stoic_johnson:/usr/share/nginx/html'
            }
        }
    }
}
