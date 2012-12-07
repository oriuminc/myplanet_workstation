ark "LimeChat" do
  url "http://cloud.github.com/downloads/psychs/limechat/LimeChat_2.33a.tbz"
  path "/Applications"
  version "2.33a"
  creates "LimeChat.app"
  action :cherry_pick
end
