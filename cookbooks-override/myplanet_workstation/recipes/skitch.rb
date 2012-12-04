include_recipe "zip_app"
version = "2.0.2"
zip_app_package "Skitch" do
  source "http://evernote.s3.amazonaws.com/skitch/mac/release/Skitch-#{version}.zip"
  checksum "7bb29ebf8e905051e8fc0cc92f770dc0735f32d838a7432dfef73f9ed7828c36"
end
