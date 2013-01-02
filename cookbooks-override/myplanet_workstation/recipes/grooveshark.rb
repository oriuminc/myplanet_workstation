remote_file "#{Chef::Config['file_cache_path']}/grooveshark-install.air" do
  source "http://preview.grooveshark.com/desktop/install.air"
  checksum "909343af1e38bda5871b131e2877263a8c3d11f21545958ffa3612138807e081"
  action :create_if_missing
end

# Adobe AIR can't yet be install programmatically, so must be done before Chef run.
# include_recipe "myplanet_workstation::adobeair"

execute "'/Applications/Utilities/Adobe AIR Application Installer.app/Contents/MacOS/Adobe AIR Application Installer' -silent -eulaAccepted #{Chef::Config['file_cache_path']}/grooveshark-install.air" do
  not_if { File.exists? "/Applications/Grooveshark.app" }
end

zip_app_package "GSDesktopHelper" do
  source "http://preview.grooveshark.com/GSDesktopHelper_Mac.zip"
  checksum "d60e508420af435382943e171a34a9d59e461d11de95b178fd1c8b157a0e868e"
end
# TODO: Add loginItem?
# TODO: Set "Enable Global Keyboard Shortcuts" in Grooveshark's options.
