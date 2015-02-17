class tftpserver (
    $packages    = [].
    $version     = 'latest',
    $tftpdir     = '/var/lib/tftpboot',
    $optionsfile = '/etc/default/tftpd-hpa',
    $options     = '--secure -c',
) {
    class{'tftpserver::install': } ->
    class{'tftpserver::config': } ~>
    class{'tftpserver::service': } ->
    Class["tftpserver"]
}
