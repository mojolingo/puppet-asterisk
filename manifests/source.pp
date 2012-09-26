define asterisk::source() {
  case $operatingsystem {
    debian, ubuntu: {
      case $packager {
        digium: {
          import 'apt'
          apt::source { 'digium':
            location => "http://packages.asterisk.org/deb",
            release  => $lsbdistcodename,
            repos    => 'main',
            key      => '175E41DF',
          }
        }
      }
    }
  }
}
