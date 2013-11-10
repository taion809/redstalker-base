#
# Cookbook Name:: redstalker-base
# Recipe:: cron
#
# Copyright (C) 2013 Nicholas J
# 
# All rights reserved - Do Not Redistribute
#

default_user = Chef::EncryptedDataBagItem.load('users', 'default_user')

user default_user['name'] do
    password default_user['password']
    shell '/bin/bash'
    home default_user['home']
    supports :manage_home => true
end

group 'sudo' do
    action [:modify]
    members [default_user['name']]
    append true
end

directory "#{default_user['home']}/.ssh" do
    owner default_user['name']
    group default_user['name']
end

file "#{default_user['home']}/.ssh/authorized_keys" do
    owner default_user['name']
    mode 0600
    content "#{default_user['ssh_key']} #{default_user['name']}"
    not_if { ::File.exists?("#{default_user['home']}/.ssh/authorized_keys")}
end
