# packages
package 'tree' do
  service :install
end

pacakge 'vim-enhanced' do
  service :install
end

pacakge 'ntp' do
  service :install
end

# files


# start
service 'syslog' do
  action [ :enable, :start ]
end

service 'ntpd' do
  action [ :enable, :start ]
end