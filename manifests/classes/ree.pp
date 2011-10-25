class ree($version='latest'){
	notify {"Install ${ruby_full_version_name}": }

	# If you want to download the ruby source on server, and the client can 
	# use this source instead of downloading from remote
	# file { "ruby-source":
	# 		  path => "/usr/local/rvm/archives/${ruby_full_tar_name}",
	# 		  source => "puppet:///rvm/${ruby_full_tar_name}",
	# 		  owner => root,
	# 		  group => root,
	# 		  mode => 644,
	# 		  ensure => present,
	# 		  before => Rvm_system_ruby [ "${ruby_full_version_name}" ],
	# 		}

	rvm_system_ruby { "${version}":
		ensure => 'present',
		default_use => true,
	}
}