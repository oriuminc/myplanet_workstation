include_recipe "ark"

ark "IR_Black" do
  url "http://blog.toddwerth.com/entry_files/13/IR_Black.terminal.zip"
  path Chef::Config['file_cache_path']
  creates "IR_Black.terminal"
  action :cherry_pick
end

# Set this or a dialog box will pop up when we try to load the Terminal theme.
pivotal_workstation_defaults "Trust web applications on first run" do
  domain 'com.apple.LaunchServices'
  key 'LSQuarantine'
  boolean false
end

# TODO: Can we open a Terminal then close it immediately?
execute "open #{Chef::Config['file_cache_path']}/IR_Black.terminal" do
  only_if %Q{defaults find '#{node['terminal']['color_scheme']}' | grep -e '^Found .*com.apple.Terminal'}
end

pivotal_workstation_defaults "New tabs reflect default settings rather than current" do
  domain 'com.apple.Terminal'
  key 'NewTabSettingsBehavior'
  integer 1
end

include_recipe "pivotal_workstation::terminal_preferences"
