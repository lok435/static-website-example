#!groovy
pipeline{
  agent any
  stages 
  {
   stage("1")
    {
      steps 
      {
       script 
        {
         sh 'sudo yum install httpd -y'
          sh 'sudo service httpd stop'
        }
      }
    }
   stage("2")
    {
      steps
      {
       script
        {
         sh 'sudo rm -rf /var/www/html/*'
          sh "echo 'deepu'>>index.html"
          sh 'sudo service httpd start'
        }
      }
    }
  }
}
