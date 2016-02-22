#CREDIT:cinterloper
#declare your variables like so then call this method to test they have been declared by the user:
#VARS=(THIS THAT SOMETHINGELSE)
testvars () {
 result=0
 for var in ${VARS[@]}
 do
  if [  "$(eval echo \$"$var")" == "" ]
  then
    result=-1
  fi
 done
 echo result
 exit result
}
