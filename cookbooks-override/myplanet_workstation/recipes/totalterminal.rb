include_recipe "dmg"
log "TotalTerminal installer will ask to close the terminal, but you can decline and restart after the Chef run."
dmg_package "TotalTerminal" do
  source "http://downloads.binaryage.com/TotalTerminal-1.3.dmg"
  checksum "2fdb9834bcc4cdb97a337b8cb883c13d4453a40fc14b1c9c63faf1952a0e0197"
  type "pkg"
end
