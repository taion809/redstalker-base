#
# Cookbook Name:: redstalker-base
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "redstalker-base::cron"
include_recipe "redstalker-base::sysadmin_users"

include_recipe "openssh"