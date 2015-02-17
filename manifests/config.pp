class tftpserver::config (

) {
    file { $tftpserver::optionsfile :
        content => template('tftpserver/tftpd-hpa.erb')
    }
}
