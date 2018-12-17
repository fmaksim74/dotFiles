#!/bin/bash

_script_dir=$( readlink -f $( dirname $0 ) )
. $_script_dir/dus.conf

_issue=$1
if [ -z "$_issue" ]; then
  read -p "Enter issue number: " _issue
  echo ""
fi
if [ -z "$_issue" ]; then
  echo "Error: Issue number expected."
  exit 1
fi
_issue=${_issue^^}

_jclname=$2
if [ -z "$_jclname" ]; then
  read -p "Enter member name: " _jclname
  echo ""
fi
if [ -z "$_jclname" ]; then
  echo "Warning: Member name not specified. All members will be uploaded."
  _jclname="*"
fi
_jclname=${_jclname^^}

read -s -p "Enter password for $_user@$_host: " _password
echo ""

_local=$_script_dir/${_issue^^}
_remote="$_user.GGC31.${_issue^^}.TEST.JCL"

echo "Upload $_local/$_jclname --> $_remote($_jclname)"

ftp -n -i "$_host" << End-Of-Session
user "${_user,,}" "$_password"
ascii
site UCST
site SB=(IBM1047,UTF-8)
site MB=(IBM1047,UTF-8)
quote site ispfstats
lcd "$_local"
cd "'$_remote'"
mput "$_jclname"
by
End-Of-Session
