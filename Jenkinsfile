node {
  stage 'Checkout'
  git 'https://github.com/nchalla0314/audacy.git '
 
  stage 'Docker build'
  docker.build('hello-world')
 
  stage 'Docker push'
  docker.withRegistry('http://537313760974.dkr.ecr.us-east-1.amazonaws.com/hello-world', 'ecr:us-east-1:ecr-credentials') {
    docker.image('hello-world').push('latest')
  }
}
