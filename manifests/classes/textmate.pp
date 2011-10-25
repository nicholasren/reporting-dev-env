class textmate {

  file{ "/tmp/TextMate_1.5.10_r1631.zip":
	source => "puppet:///modules/reporting-dev-env/TextMate_1.5.10_r1631.zip",
        ensure => present,
    }

  
 exec { 'install-textmate':
    path    => '/usr/bin:/usr/sbin:/bin',
    command => "unzip /tmp/TextMate_1.5.10_r1631.zip && mv TextMate.app/  /Applications/TextMate.app",
  }
}
