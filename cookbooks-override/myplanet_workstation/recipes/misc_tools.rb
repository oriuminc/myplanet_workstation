include_recipe "homebrew"

%w{
  hub
  legit
}.each do |pkg|
  package pkg
end
