pipeline {
    agent any 
    stages {
        stage('clonedepot') { 
            steps {
                sh "rm -rf *"
                sh "git clean -fdx"
                sh "git clone https://github.com/knapk4/TPJenkins"
            }
        }
        stage('build') { 
            steps {
                sh "cd jenkins/ && javac Main.java"
            }
        }
        stage('run') { 
            steps {
                sh "cd TPJenkins/ && java Main"
            }
        }
    }
}
