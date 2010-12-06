#
# rabbitmq module
#
# Copyright 2010, Atizo AG
# Simon Josi simon.josi+puppet(at)atizo.com
#
# This program is free software; you can redistribute 
# it and/or modify it under the terms of the GNU 
# General Public License version 3 as published by 
# the Free Software Foundation.
#
# This module manages an nfs client
# to manage the nfs server please look
# into the module nfsd
#

class rabbitmq {
  package{'rabbitmq-server':
    ensure => installed,
  }
  service{'rabbitmq-server':
    ensure => running,
    enable => true,
    hasstatus => true,
    require => Package['rabbitmq-server'],
  }
}
