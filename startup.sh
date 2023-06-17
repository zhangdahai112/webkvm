#!/bin/bash

VENDOR=${VENDOR}

if [ -z $VENDOR ];then
  # shellcheck disable=SC1073
  echo "NO VENDOR Provided"
  echo "Possible Vendor is :"
  echo "Inspur,DELL,H3C,Supermicro,Suma"
  exit 1
fi

if [[ $VENDOR == DEL* ]];then
  dir=/dell
elif [[ $VENDOR == Inspur* ]];then
  dir=/inspur
elif [[ $VENDOR == *H3C* ]];then
  dir=/h3c
elif [[ $VENDOR == Supermicro* ]];then
  dir=/supermicro
elif [[ $VENDOR == Suma* ]];then
  dir=/sugo
elif [[ $VENDOR == Lenovo* ]];then
  dir=/lenovo
else
  echo "Not supported Vendor: $VENDOR"
  exit 1
fi

/bin/bash $dir/startup.sh

if [ ! -f /app/jviewer.jnlp ];then
  echo "Failed to get jviewer.jnlp please add QQ:631871336 for support"
  exit 1
fi

cat /app/jviewer.jnlp

javaws /app/jviewer.jnlp