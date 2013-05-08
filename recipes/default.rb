git "#{Chef::Config[:file_cache_path]}/tig" do |path|
    repository "#{node[:tig][:repository]}"
    revision "#{node[:tig][:revision]}"
    depth 1 # shallow clone
    user "root"
    action :sync
    not_if "test -d #{path}"
    notifies :run, "bash[install_tig]"
end

bash "install_tig" do
  action :nothing
  cwd "#{Chef::Config[:file_cache_path]}/tig"
  user "root"
  code <<-EOH
    make configure
    ./configure --prefix=#{node[:tig][:dir]} && \
    make && \
    make install
  EOH
end
