class tftpserver::config (

) {
    file { $tftpserver::optionsfile:}
        content => template('puppet:///tftpserver/tftpd-hpa.erb')
    }
}
