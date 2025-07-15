pipeline {
    agent any
    
    tools {
        maven '3.9.10'  // Assumes you've configured Maven in Jenkins Global Tool Configuration
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://your-repo-url.git'  // Update with your repo URL
            }
        }
        
        stage('Install Maven Packages') {
            steps {
                script {
                    // Execute your custom script if you have one
                    if (fileExists('install-maven-packages.sh')) {
                        sh 'chmod +x install-maven-packages.sh'
                        sh './install-maven-packages.sh'
                    } else {
                        // Default maven install if no script exists
                        sh 'mvn clean install -DskipTests'
                    }
                }
            }
        }
        
        stage('Verify Installation') {
            steps {
                sh 'mvn dependency:tree'  // Verify dependencies were installed
            }
        }
    }
    
    post {
        always {
            junit '**/target/surefire-reports/*.xml'  // Report test results if tests were run
        }
        success {
            echo 'Maven packages installed successfully!'
        }
        failure {
            echo 'Failed to install Maven packages. Check logs for details.'
        }
    }
}
