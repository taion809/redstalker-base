#
# Cookbook Name:: redstalker-base
# Recipe:: metrics
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

dd_api = Chef::EncryptedDataBagItem.load('apis', 'datadog')

node.override.datadog.api_key = dd_api['api_key']
node.override.datadog.application_key = dd_api['application_key']

include_recipe "datadog"
include_recipe "datadog::dd-agent"
