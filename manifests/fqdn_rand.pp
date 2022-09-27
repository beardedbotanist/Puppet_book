cron::job { 'run_daily_backup':
    command => '/usr/local/bin/backup',
    minute  => '0',
    hour    => fqdn_rand(24, 'run daily backup')
}
cron::job { 'run_daily_backup_sync':
    command => '/usr/local/bin/backup_sync',
    minute  => '0',
    hour    => fqdn_rand(24, 'run daily backup sync'),
}
