Puppet::Type.newtype(:rvm_system_ruby) do
    @doc = "System Install Ruby"
 
    ensurable
 
    newparam(:name) do
        desc "The name of the Ruby to be managed."
        isnamevar
    end
 
    newproperty(:default_use) do
        desc "Should this Ruby be the system default for new terminals?"
        defaultto false
    end
end
