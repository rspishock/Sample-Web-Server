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

package 'nano' do
  service :install
end

package 'syslog' do
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

serice 'syslog' do
  action [ :enable, :start ]
end