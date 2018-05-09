#! /bin/bash
rake db:migrate
rake db:seed
if [ -e tmp/pids/server.pid ];then
  rm -f tmp/pids/server.pid
fi
rails s -b 0.0.0.0 -p 3000
