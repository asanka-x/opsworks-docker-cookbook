case node[:platform]
when "ubuntu","debian"
  package "docker.io" do
    action :install
    version "1.4.1"
  end
when 'centos','redhat','fedora','amazon'
  package "docker" do
    action :install
  end
end

service "docker" do
  action :start
end