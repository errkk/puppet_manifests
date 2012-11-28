class eric_vimrc{                                                                                                                                          
               
    file { "/home/vagrant/.vimrc":
        ensure => present,
        source => 'puppet:///modules/eric_vimrc/.vimrc',
        owner => 'vagrant',
        group => 'vagrant'
    }          
          
               
}
