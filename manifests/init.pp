class tftpserver (

) {

}

  class{'tftpserver::install': } ->
  class{'tftpserver::config': } ~>
  class{'tftpserver::service': } ->
  Class["tftpserver"]
