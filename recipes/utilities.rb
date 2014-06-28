#
# Cookbook Name:: redstalker-base
# Recipe:: utilities
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

["vim", "htop", "language-pack-ja", "language-pack-en"].each do |p|
    package p do
        action :install
    end
end

include_recipe "fail2ban"
