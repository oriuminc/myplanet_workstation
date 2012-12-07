include_recipe "homebrew"

%w{
  colordiff
  curl
  git-extras
  git-flow
  legit
  hub
}.each do |pkg|
  package pkg
end
