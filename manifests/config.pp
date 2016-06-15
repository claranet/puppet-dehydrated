class letsencrypt_sh::config {
  file { "${letsencrypt_sh::etcdir}/config":
    ensure  => present,
    owner   => $letsencrypt_sh::user,
    group   => $letsencrypt_sh::user,
    content => "CONTACT_EMAIL=${letsencrypt_sh::contact_email}\n",
  }

  file { "${letsencrypt_sh::etcdir}/.acme-challenges":
    ensure  => directory,
    owner   => $letsencrypt_sh::user,
    group   => $letsencrypt_sh::user,
    mode    => '0755',
  }
}
