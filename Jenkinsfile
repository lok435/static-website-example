#! groovy

//def dockerImageRepo = 'registry.us.se.com/epam/product-machine-learning-pipeline'
def dockerImageRepo = 'epamt/product-machine-learning-pipeline'
def dockerImageTag
def dockerImage
//def dockerRegistry = 'registry.us.se.com'
def dockerRegistry = 'hub.docker.com'

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
                    dockerImageTag="$dockerImageRepo"+":"+"$RELESE_VERSION"
                    echo "Created a Tag for uploading an Image to Registry based on Build_Number : $dockerImageTag"
                    dockerImage = docker.build "${dockerImageTag}"
                    echo "$dockerImage"
                    sh "docker images"
                }
            }
            
        }
        stage('Pushing ML image ') {
           steps{
               script{
                    echo "Pushing the ML docker image"
                    sh 'docker login --username="anandgit71" --password="anandgit12" ${dockerRegistry}'
					dockerImage.push()
               }
           }
        }
    }
    post {
        always {
        		// sh 'docker rmi $dockerImage'
                sh 'docker rmi $(docker images -qf "dangling=true")'
                sh 'docker logout hub.docker.com'
                deleteDir()
            }
        }
}
