class tftpserver::config (
    $options = $tftpserver::options,
    $listen  = $tftpserver::listen,
    $user  = $tftpserver::user,
    $tftpdir  = $tftpserver::tftpdir,
) {
    file { $tftpserver::optionsfile :
        content => template('tftpserver/tftpd-hpa.erb')
    }
}
