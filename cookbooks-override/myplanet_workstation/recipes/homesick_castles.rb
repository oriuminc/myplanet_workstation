require_recipe "homesick"

vcs_user = "patcon"

homesick_castle "dotfiles-pub" do
  user WS_USER
  source "https://github.com/#{vcs_user}/dotfiles-pub.git"
  action :update
end

homesick_castle "dotfiles-priv" do
  user WS_USER
  source "git@bitbucket.org:#{vcs_user}/dotfiles-priv.git"
  action :update
end
