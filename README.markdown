# hipchat #

This is a simple module for installing Atlassian's HipChat client.

This adds support for on-site hipchat servers, so that authentication traffic doesn't leave the local network. it extends k4k's version which added RHEL support

Use it by declaring the hipchat class.

`include hipchat`

It accepts one parameter, 'manage_repo' which defaults to true. This parameter configures the hipchat apt repository and key via [puppetlabs/apt](http://forge.puppetlabs.com).
