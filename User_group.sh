echo "Enter group name to be created"
read grp
read grp1 = getent group | awk -F: '{print $1}' | grep $grp
if [[ $grp !=  $grp1 ]]
then
echo "Enter user name to be created"
read usr
read usr1 = getent passwd | awk -F: '{print $1}' | grep $usr
if [[ $usr != $usr1 ]] 
then
groupadd $grp
useradd -G $grp $usr
getent passwd | grep $usr
echo "User and group is created"
else
usermod -G $grp $usr
echo "Entered username : $usr is already exists"
fi
else
echo " Entered Group : $grp is already exists"
fi
