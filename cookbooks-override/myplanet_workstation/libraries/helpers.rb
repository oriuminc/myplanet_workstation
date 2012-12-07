module Myplanet
  module Janus
    module Helpers

      def newer_revisions_available?
        Dir.chdir "#{WS_HOME}/.vim"
        remote_head_revision = %x[git ls-remote origin master].split("\t").first
        current_local_revision = %x[git rev-parse HEAD].chomp
        remote_head_revision != current_local_revision
      end

    end
  end
end
