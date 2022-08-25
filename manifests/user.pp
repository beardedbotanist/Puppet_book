class add_user{

group { 'devs':
  ensure => 'present',
}
file { '/home/PatTest':
    ensure => 'directory',
}
  user { 'PatTest':
    ensure     => 'present',
    managehome => true,
}
}
