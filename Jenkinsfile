pipeline{
agent any
stages{
stage('terraform init & apply '){
steps{
sh "terraform init"
sh "terraform destroy --auto-approve"
    }
  }
 }
}

