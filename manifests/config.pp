class tftpserver::config (
    $options = $ntpserver::options,
    $listen  = $ntpserver::listen,
    $user  = $ntpserver::user,
    $tftpdir  = $ntpserver::tftpdir,
) {
    file { $tftpserver::optionsfile :
        content => template('tftpserver/tftpd-hpa.erb')
    }
}
