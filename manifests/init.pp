class asterisk(
  $packager = 'digium,
  $version  = '1.8',
) {

  asterisk::source($packager)

  package { "asterisk-${version}":
    # TODO Support CentOS/RedHat
    require => Apt::Source['digium'],
    ensure => latest,
  }

  service { "asterisk":
    ensure => running,
    subscribe => Package["asterisk-${version}"],
  }

}
