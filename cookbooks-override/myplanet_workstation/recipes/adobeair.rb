# Won't work until this is fixed: https://twitter.com/patconnolly/status/276043932905918465
version = "3.5"
dmg_package "Adobe AIR Installer" do
  volumes_dir "Adobe AIR"
  source "http://airdownload.adobe.com/air/mac/download/#{version}/AdobeAIR.dmg"
  checksum "db8ae4cce965d497ab060ee021ab273ded92d41deafcab3b53bf1a76d994a3b5"
end
