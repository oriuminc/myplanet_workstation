remote_file "#{Chef::Config['file_cache_path']}/grooveshark-install.air" do
  source "http://preview.grooveshark.com/desktop/install.air"
  checksum "909343af1e38bda5871b131e2877263a8c3d11f21545958ffa3612138807e081"
end

# Adobe AIR can't yet be install programmatically, so must be done before Chef run.
# include_recipe "myplanet_workstation::adobeair"

execute "'/Applications/Utilities/Adobe AIR Application Installer.app/Contents/MacOS/Adobe AIR Application Installer' -silent -eulaAccepted #{Chef::Config['file_cache_path']}/grooveshark-install.air" do
  not_if { File.exists? "/Applications/Grooveshark.app" }
end

