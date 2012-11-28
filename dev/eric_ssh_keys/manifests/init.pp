class eric_ssh_keys {                                                                                                                                                                                      
               
    file { "/home/vagrant/.ssh/":
        ensure => directory,
        owner => 'vagrant',
        group => 'vagrant',
        mode => 700 
    }          
               
    file { "/home/vagrant/.ssh/id_rsa":
        ensure => present,
        source => 'puppet:///modules/eric_ssh_keys/id_rsa',
        owner => 'vagrant',
        group => 'vagrant',
        mode => 600,
        require => File['/home/vagrant/.ssh']
    }          
               
    file { "/home/vagrant/.ssh/id_rsa.pub":
        ensure => present,
        source => 'puppet:///modules/eric_ssh_keys/id_rsa.pub',
        owner => 'vagrant',
        group => 'vagrant',
        mode => 600,
        require => File['/home/vagrant/.ssh']
    }          
               
}