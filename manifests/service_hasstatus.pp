service { 'sshd':
ensure    => running,
enable    => true,
hasstatus => false,
pattern   => 'sshd',
}
