pipeline {
	
	
	    agent any
	    
	    tools {
        // Define the JDK version to use
        jdk 'jdk21'
        maven 'Maven3'
               }
               

    stages {
		stage('Checkout') {
            steps {
                checkout scm
                // Add your build steps here
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
                // Add your build steps here
                bat 'mvn clean test'
            }
        }
        
    }
	
}