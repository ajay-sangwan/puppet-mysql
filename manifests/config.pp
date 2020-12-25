# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include mysql::config
class mysql::config {
  file { '/etc/mysql/mysql.conf.d/mysqld.cnf':
    ensure => 'file',
    source => "puppet:///modules/mysql/mysqld.cnf",
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
    notify => Service['mysql']
  }
}
