import "classes/*.pp"
import "users/*.pp"

class setup {
	
	$ruby_full_version_name = "ree-1.8.7-2010.02"
	$ruby_full_tar_name = "${ruby_full_version_name}.tar.bz2"
	$rvm_version = "1.7.2"
	
	#rvm
	if $rvm_installed == "false" {
		
		notify {"Install rvm ${rvm_version}": }
		
		class {'rvm::system':
			version => $rvm_version,
		}	
	}
	
	#ree
	if $ree_installed == "false"{
	    notify {"Install ruby ${ruby_full_version_name}":}
	    class {'ree':
	      version => $ruby_full_version_name,
	    }
	}
	
	#textmate
	notify {"Install textmate":}
	class {'textmate':
	}
	
	#git
	notify {"Install git":}
	class{'git':
	}
}

