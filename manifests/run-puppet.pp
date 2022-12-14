# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  source => '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
  mode   => '0755',
}

cron::job { 'run-puppet':
    minute  => '*/15',
    hour    => '*',
    date    => '*',
    month   => '*',
    weekday => '*',
    command => '/usr/local/bin/run-puppet',
  }
