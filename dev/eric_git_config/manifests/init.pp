class eric_git_config {
    file { "/home/vagrant/.gitconfig":
        ensure => present,
        source => 'puppet:///modules/eric_git_config/gitconfig.conf',
        owner => 'vagrant',
        group => 'vagrant',
        require => Package['git']
    }
}
