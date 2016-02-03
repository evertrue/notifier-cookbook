#
# Cookbook Name:: notifier
# Recipe:: default
#
# Copyright (C) 2013 EverTrue, Inc.
#
# All rights reserved - Do Not Redistribute
#

notifier 'test message' do
  to 'devops@evertrue.com'
  message 'This is a test notification from the notifier cookbook'
end
