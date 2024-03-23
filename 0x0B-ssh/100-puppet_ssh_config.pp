#!/usr/bin/env bash
# Using puppet to make changes to the configuration file

file { 'etc/ssh_config':
        ensure => present,

content =>"

        #SSH client configuration
        host*
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
	",

}
