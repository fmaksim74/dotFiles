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
  echo "Error: Member name expected."
  exit 1
fi
_jclname=${_jclname^^}

ssh $_user@$_host submit "\"//'$_user.GGC31.$_issue.TEST.JCL($_jclname)'\""
