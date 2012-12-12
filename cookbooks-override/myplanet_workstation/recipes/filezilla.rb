remote_file "#{Chef::Config['file_cache_path']}/FileZilla_3.5.3_i686-apple-darwin9.app.tar.bz2" do
  source "http://voxel.dl.sourceforge.net/project/filezilla/FileZilla_Client/3.5.3/FileZilla_3.5.3_i686-apple-darwin9.app.tar.bz2"
  checksum "b69a98100cf4056a32c568c95dd712e7fdf25bc212e349770cbdfcbe1368bc2c"
end

execute "tar -xzf #{Chef::Config['file_cache_path']}/FileZilla_3.5.3_i686-apple-darwin9.app.tar.bz2" do
  cwd "/Applications"
end
