#! /bin/bash 
#Specify interpreter

#Environment variables
#PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
#export PATH

#Variables
    #newUserName
    #newPassWord
    #newFullName
    #newPrimaryGroup



#Functions
    #NewUserAccount
function NewUserAccount() {
    echo "New User Name: " 
        read -r newUserName 
    echo "New User Password: "
        read -r newPassWord
    echo "New User Full Name: "
        read -r newFullName
    echo "New User Primary Group: "
        read  -r newPrimaryGroup
    
    #Create new user account for linux device
    sudo useradd -m -p "$newPassWord" -c "$newFullName" -g "$newPrimaryGroup" "$newUserName"
        echo "New user account created" #echo to console
    #use printf to echo string plus details to log file
        printf "New user account created: %s, %s, %s " "$newUserName", "$newFullName", "$newPrimaryGroup" >> /var/log/userAccountManagement.log

}
    
#DeleteUserAccount
function DeleteUserAccount() {
    echo "User Name to Delete: "
        read -r deleteUserName
    echo "Are you sure you want to delete this user account? (y/n)"
        read -r deleteConfirmation

    if [ "$deleteConfirmation" = "y" ]; then {
            echo "Deleting user account %s" "$deleteUserName"
        #Delete user account for linux device
            sudo userdel "$deleteUserName"
            echo "User account deleted" #echo to console
        #use printf to echo string plus details to log file
            printf "User account deleted: %s " "$deleteUserName" >> /var/log/userAccountManagement.log
    } else {
        echo "User account not deleted"
    }
    fi

}

#ChangeUserPassword
function ChangeUserPassword() 
{
#Get account to change and new password
    echo "User Name to Change Password: "
        read -r changePasswordUserName
    echo "New Password: "
        read -r changePassword

#Change user account password for linux device
    echo "Changing user account password"
        sudo passwd "$changePasswordUserName" "$changePassword"
            echo "User account password changed" #echo to console
        #use printf to echo string plus details to log file
            printf "User account password changed: %s " "$changePasswordUserName" >> /var/log/userAccountManagement.log

}

#NewUserGroup
function NewUserGroup() 
{
#Get new group name
    echo "New Group Name: "
        read -r newGroupName

#Create new group for linux device
    echo "Creating new group"
        sudo groupadd "$newGroupName"
            echo "New group created" #echo to console
        #use printf to echo string plus details to log file
            printf "New group created: %s " "$newGroupName" >> /var/log/userAccountManagement.log

}

#DeleteUserGroup
function DeleteUserGroup() 
{
#Get group to delete
    echo "Group Name to Delete: "
        read -r deleteGroupName
    echo "Are you sure you want to delete this group? (y/n)"
        read -r deleteConfirmation

    if [ "$deleteConfirmation" = "y" ]; then {
            echo "Deleting group %s" "$deleteGroupName"
        #Delete group for linux device
            sudo groupdel "$deleteGroupName"
            echo "Group deleted" #echo to console
        #use printf to echo string plus details to log file
            printf "Group deleted: %s " "$deleteGroupName" >> /var/log/userAccountManagement.log
    } else {
        echo "Group not deleted"
    }
    fi
}


#AddUserToGroup
function AddUserToGroup() 
{
#modify user account to add to group
#list users on the device
    user_list=$(awk -F':' '{ print $1 }' /etc/passwd)
        echo "Users on the system:"
        echo "$user_list"

#Get user to add to group
    echo "User Name to Add to Group: "
        read -r addUserToGroupUserName

#list groups on the device
    group_list=$(awk -F':' '{ print $1 }' /etc/group)
        echo "Groups on the system:"
        echo "$group_list"

#Get group to add user to
    echo "Group Name to Add User to: "
        read -r addUserToGroupGroupName

#Add user to group for linux device
    echo "Adding user to group"
        sudo usermod -a -G "$addUserToGroupGroupName" "$addUserToGroupUserName"
            echo "User added to group %s" "$addUserToGroupGroupName" #echo to console
        #use printf to echo string plus details to log file
            printf "User added to group: %s added to %s " "$addUserToGroupUserName", "$addUserToGroupGroupName" >> /var/log/userAccountManagement.log
}
#RemoveUserFromGroup
function RemoveUserFromGroup() {
#modify user account to remove from group

    #list groups on the device
    group_list=$(awk -F':' '{ print $1 }' /etc/group)
        echo "Groups on the system:"
        echo "$group_list"
    #select group to remove user from
    echo "Group Name to Remove User from: "
        read -r removeUserFromGroupGroupName
    #list users in group
    group_list=$(awk -F':' '{ print $1 }' /etc/group)
        echo "Users in group:"
        echo "$group_list"
    #select user to remove from group
    echo "User Name to Remove from Group: "
        read -r removeUserFromGroupUserName
    #remove user from group
    echo "Removing user from group"
        sudo gpasswd -d "$removeUserFromGroupUserName" "$removeUserFromGroupGroupName"
            echo "User removed from group %s" "$removeUserFromGroupGroupName" #echo to console
        #use printf to echo string plus details to log file
            printf "User removed from group: %s removed from %s " "$removeUserFromGroupUserName", "$removeUserFromGroupGroupName" >> /var/log/userAccountManagement.log

}


function MainMenu() {
    echo "User Account Management Console"
    echo "1. Create New User Account"
    echo "2. Delete User Account"
    echo "3. Change User Password"
    echo "4. Create New User Group"
    echo "5. Delete User Group"
    echo "6. Add User to Group"
    echo "7. Remove User from Group"
    echo "8. Exit"
    echo "Enter your choice: "
        read -r choice
    case $choice in 
        1) NewUserAccount ;;
        2) DeleteUserAccount ;;
        3) ChangeUserPassword ;;
        4) NewUserGroup ;;
        5) DeleteUserGroup ;;
        6) AddUserToGroup ;;
        7) RemoveUserFromGroup ;;
        8) exit 0 ;;
        *) echo "Invalid choice" ;;
    esac
}

#main
while true
do
    MainMenu
done