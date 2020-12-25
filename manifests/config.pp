# @summary A short summary of the purpose of this class
#  Configures MySQL daemon file
class mysql::config {
  file { "${mysql::config_path}":
    ensure => $mysql::config_ensure,
    source => "puppet:///modules/mysql/${osfamily}.cnf",
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
    notify => Service["${mysql::service_name}"],
  }
}
