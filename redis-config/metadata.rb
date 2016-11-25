maintainer       "Matt Ryder"
maintainer_email "m.ryder@volcanic.co.uk"
license          "MIT"
description      "Configure and deploy Elasticache to a Rails instance"

name   'redis-config'
recipe 'redis-config::configure',     'Configure the Elasticache node cluster information.'