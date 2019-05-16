node('linux') {
	stage('Setup') {
   git credentialsId: 'hw11-trial', url: 'https://github.com/UST-SEIS665/hw11-seis665-03-spring2019-ikewrobel.git'
   sh 'aws s3 cp s3://dockers-all-around/classweb.html index.html'
  }
  stage('Build') {
    sh 'docker build -t classweb:1.0 .'
  }
  stage('Test') {
	sh 'docker stop classweb1||true'
	sh 'docker rm classweb1||true'
    
	sh 'docker run -d --name classweb1 -p 80:80 --env NGINX_PORT=80 classweb:1.0'
	sh '''
		CONTAINER_IP=$(docker inspect --format='{{.NetworkSettings.IPAddress}}
		curl -s $CONTAINER_IP
	'''
    	sh 'docker stop classweb1'
	sh 'docker rm classweb1'
  }
}
