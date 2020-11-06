# Packages
package 'httpd' do
    action :install
end

package 'ssh-server' do 
	action :install
end

package 'ssh-client' do 
	action :install
end

package 'ntp' do
	action :install
end

package 'tree' do
	action :install
end

package 'vim-enhanced' do
	action :install
end


# Sample web page
template '/var/www/html/index.html' do
    content 'index.html.erb'

    action :create
end


# Services
service 'httpd' do
    action [ :enable, :start ]
end

service 'ssh-server' do
    action [ :enable, :start ]
end

service 'ssh-client' do
    action [ :enable, :start ]
end

service 'ntp' do
    action [ :enable, :start ]
end


# Files
file '/etc/motd' do
    content "ALERT! You are entering into a secured area! Your IP, Login Time, Username has been noted and has been sent to the server administrator!
    This service is restricted to authorized users only. All activities on this system are logged.
    Unauthorized access will be fully investigated and reported to the appropriate law enforcement agencies."
    action :create
    owner 'root'
    group 'root'
end
