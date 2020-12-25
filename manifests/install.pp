# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include mysql::install
class mysql::install {
  package { "${mysql::install_name}":
    ensure => $mysql::install_ensure,
  }
}
