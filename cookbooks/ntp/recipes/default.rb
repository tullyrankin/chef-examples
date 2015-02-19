#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#
package 'ntp' do
	action :install
end

package 'ntpdate' do
	action :install
end

template '/etc/ntp.conf' do
	source 'ntp.conf.erb'
	mode '0644'
  owner 'root'
  group 'root'
end
