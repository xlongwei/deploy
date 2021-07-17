cp="target/classes"
for item in `ls target/*.jar`; do
  if [ -z $cp ]; then
    cp=$item
  else
    cp="$cp;$item"
  fi
done
# echo $cp
java -cp $cp com.xlongwei.deploy.Scp -h
# java -cp $cp com.xlongwei.deploy.Scp scp.sh tomcat@10.7.128.28:/home/tomcat/code
# java -cp $cp com.xlongwei.deploy.Scp --pw passwd
# env SSHPASS=passwd java -cp $cp com.xlongwei.deploy.Scp
