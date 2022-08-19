# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  source => '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
  mode   => '0755',
}

cron::hourly { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  }
