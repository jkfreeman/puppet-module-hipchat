class hipchat(
    $manage_repo = true,
    $server = pick($::hipchat_server,$hipchat_server, false),
    ) {

  if $manage_repo {
    require hipchat::repo
  }

  package { 'hipchat':
    ensure => installed,
  }
  file { [ "/etc/skel/.config", "/etc/skel/.config/Atlassian" ]:
    ensure  => "directory",
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
  }

  file { '/etc/skel/.config/Atlassian/HipChat.ini' :
    content => template('hipchat/HipChat.ini.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

}
