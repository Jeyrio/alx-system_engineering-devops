#!/usr/bin/env bash
# Make changes to config file using puppet
file {'/etc/ssh/ssh_config':
        ensure -> present',
}

file_line {'Turn off passwd auth':
        path    -> '/etc/ssh/ssh_config',
        line    -> 'PasswordAuthetication no',
        match   -> 'PasswordAuthetication yes',
        replace -> 'true',

}
file_line {'Declare identity file':
        path    -> '/etc/ssh/ssh_config',
        line    -> 'IdentityFile ~/ssh/school',
        match   -> '^IdentityFile',
        ensure  -> 'present',
}
