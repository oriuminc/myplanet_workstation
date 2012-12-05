include_recipe "homebrew"
package "macvim"

execute "curl -Lo- https://bit.ly/janus-bootstrap | bash > /dev/null" do
  user WS_USER
  not_if "test -d #{WS_HOME}/.vim/janus"
end

execute "rake > /dev/null" do
  user WS_USER
  cwd "#{WS_HOME}/.vim"
end
