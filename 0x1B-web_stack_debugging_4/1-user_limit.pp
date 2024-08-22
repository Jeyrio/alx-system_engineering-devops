# Enable holberton user to login and
# Open a file without any error message

exec { 'increase holberton user hard file limit':
    command => 'sed -i "/holberton hard/s/5/5000/" /etc/security/limits.conf',
    path    => '/usr/local/bin/:/bin/',
}

exec { 'increase holberton user soft file limit':
    command => 'sed -i "/holberton soft/s/4/5000/" /etc/security/limits.conf',
    path    => '/usr/local/bin/:/bin/',
}
