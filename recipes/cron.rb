#
# Cookbook Name:: redstalker-base
# Recipe:: cron
#
# Copyright (C) 2013 Nicholas J
# 
# All rights reserved - Do Not Redistribute
#

cookbook_file "chef-client" do
    path '/etc/cron.d/chef-client'
    source 'chef-client'
    owner 'root'
    action :create_if_missing
end