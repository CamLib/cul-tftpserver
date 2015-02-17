class tftpserver::install (

) {
    if $tftpserver::packages {
        package{ $tftpserver::packages:
            ensure => $tftpserver::version
        }
    }

}
