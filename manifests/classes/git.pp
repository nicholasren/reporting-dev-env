class git ($version="1.7.5.4"){

  $source_home = "/tmp/git-source/"
  file{ "${source_home}":
        directory => true,
        ensure => present,
    }

  
 exec { 'install-git':
    path    => '/usr/local/bin:/usr/bin:/usr/sbin:/bin',
    command => "cd ${source_home} && curl -O http://kernel.org/pub/software/scm/git/git-${version}.tar.bz2 && tar xzvf git-${version}.tar.bz2 && cd git-${version} && ./configure --prefix=/usr/local && make && sudo make install",
  }
}
