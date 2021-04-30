# List of logs and who should be notified of issues
logPaths=("api.log" "auth.log" "jenkins.log" "data.log")
logEmails=("jay@email" "emma@email" "jon@email" "sophia@email")

# Look for signs of trouble in each log
for i in ${!logPaths[@]};
do
  log=${logPaths[$i]}
  echo $log
done