pipeline {
    agent {
        label 'jenkins-slave1'
    }
    environment{
        name="sujith"
        course="java-full-stack-developer"
    }
    stages {
        stage('first-stage') {
            steps {
                echo "hello welcome to jenkins"
                echo "welcome ${name}"
                echo "Have u learned ${course}"
            
            }
        }
        stage('sec-stage'){
            environment{
                id="5657"
                course="python"
            }
            steps{
                echo "u r second stage "
                echo "Yours id is ${id}"
                echo "urs course is ${course}"
            }
         
        }
    }
}
