# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include mysql::service
class mysql::service {
  service { 'mysql':
    ensure     => 'running',
    enable     => true,
    hasrestart => true,
  }
}
