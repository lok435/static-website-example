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
          sh "sudo cp /var/lib/jenkins/workspace/multi-branch-test_test/* /var/www/html/"
          sh 'sudo service httpd start'
        }
      }
    }
  }
}
