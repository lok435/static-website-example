#! groovy

def dockerImageRepo = 'registry.us.se.com/epam/product-machine-learning-pipeline'
def dockerImageTag
def dockerImage
def dockerRegistry = 'registry.us.se.com'

pipeline {
    agent any

    options {
        disableConcurrentBuilds()
        timestamps()
    }

    stages {
        stage('Building ML Image') {
            steps{
                script{
                    dockerImageTag="$dockerImageRepo"+":"+"2.1.1"
                    echo "Created a Tag for uploading an Image to Registry based on Build_Number : $dockerImageTag"
                }
            }
            
        }
        stage('Pushing ML image ') {
           steps{
               script{
                    echo "Pushing the ML docker image"
               }
           }
        }
    }
}
