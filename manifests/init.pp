class tftpserver (
    $enable      = true,
    $start       = true,
    $packages    = [],
    $version     = 'latest',
    $esure       = 'running',
    $listen      = '0.0.0.0',
    $user        = 'tftp',
    $tftpdir     = '/var/lib/tftpboot',
    $optionsfile = '/etc/default/tftpd-hpa',
    $options     = '--secure -c',
) {
    class{'tftpserver::install': } ->
    class{'tftpserver::config': } ~>
    class{'tftpserver::service': } ->
    Class["tftpserver"]
}
