This module is a work in progress.

mojolingo/asterisk
==================

This module provides functions to manage Asterisk packages.

Usage
-----

If you are are using [Librarian-puppet](https://github.com/rodjek/librarian-puppet) then add this to your Puppetfile:

```Ruby
mod "puppetlabs/apt"
mod "mojolingo/asterisk", :git => "git://github.com/mojolingo/puppet-asterisk.git"
```

Then run `librarian-puppet update`

To install Asterisk 1.8 from the Digium repositories add this to your Puppet manifest:

```Puppet
include asterisk
```

Caveats
------

This module currently only supports Debian and Ubuntu.

