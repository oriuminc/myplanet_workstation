include_recipe "pivotal_workstation::chrome"

dmg_package "lpmacosx" do
  source "https://lastpass.com/lpmacosx.dmg"
  volumes_dir "LastPass for Mac OS X"
  type "pkg"
  package_id "com.lastpass.lpmacosx"
  action :install
end
