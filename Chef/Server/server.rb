package 'httpd' do
    action :install
end

template '/var/www/html/index.html' do
    content 'index.html.erb'

    action :create
end

service 'httpd' do
    action [ :enable, :start ]
end

file '/etc/motd' do
    content "ALERT! You are entering into a secured area! Your IP, Login Time, Username has been noted and has been sent to the server administrator!
    This service is restricted to authorized users only. All activities on this system are logged.
    Unauthorized access will be fully investigated and reported to the appropriate law enforcement agencies."
    action :create
    owner 'root'
    group 'root'
end
