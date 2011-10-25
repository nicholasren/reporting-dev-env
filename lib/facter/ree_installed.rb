Facter.add("ree_installed") do
  rvm_binary = "/usr/local/rvm/bin/rvm"

  #TODO
  setcode do
    File.exists? rvm_binary
  end
end
