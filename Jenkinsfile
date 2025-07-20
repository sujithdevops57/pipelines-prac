pipeline {
    agent none

    stages {
        stage('Build-stage - node-1a') {
            agent {
                label 'node-1a-label-1a'
            }
            steps {
                echo "Hello Sujith, how are you?"
                echo "This is the Building stage"
                sh "hostname -i"
            }
        }

        stage('Compiling - node-1b') {
            agent {
                label 'node-1b-label-1b'
            }
            steps {
                echo "Running on label node-1b"
                echo "this is compiling stage "
                sh "hostname -i"
            }
        }

        stage('Executing-stage - node-1c') {
            agent {
                label 'node-1c-label-1c'
            }
            steps {
                echo "This is the Executing stage"
                echo "this is sujiths executeing stage"
                sh "hostname -i"
            }
        }
    }
}
