ark "LimeChat" do
  url "http://cloud.github.com/downloads/psychs/limechat/LimeChat_2.33a.tbz"
  path "/Applications"
  creates "LimeChat.app"
  action :cherry_pick
end
