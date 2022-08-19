file{'etc/owned_by_debian':
  ensure => present,
  owner  => 'debian,'
  group  => 'debian'
}
