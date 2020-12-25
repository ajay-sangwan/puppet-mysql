# @summary A short summary of the purpose of this class
#   Ensures service is started and enabled and allow for restarts
class mysql::service {
  service { "${mysql::service_name}":
    ensure     => $mysql::service_ensure,
    enable     => $mysql::service_enable,
    hasrestart => $mysql::service_hasrestart,
  }
}
