node{
stage(`scm package`){
some git credentials
}
stage(`mvn package`){
sh"${mvn CMD} clean package"
}
stage(`docker-build`){
sh'sudo docker build -t mano8888/my-app .'
}
stage(`docker push`){
with credentials([string] (credentialsId: mano8888 variable:manu@1406)]){
sh"sudo docker login -u mano8888 ${manu@1406}"
}
sh'sudo docker push mano8888/my-app'
}
stage(`run docker on Dev server`){
def docker run = docker run  -p8080:8080 -d --name mano8888/my-app"
sshagent(['dev server']){
sh "ssh -ostricthostkeychecking=no ec2-user@172.17.0.2 ${docker run}"
}
}
}
