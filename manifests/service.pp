class tftpserver::service {
  $ensure = $tftpserver::start ? {true => running, default => stopped}
 
    service{"tftpd-hpa":
        ensure  => $ensure,
        enable  => $tftpserver::enable,

    }
}
