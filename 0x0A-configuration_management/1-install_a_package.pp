# This Puppet manifest installs puppet-lint

package { 'Flask':
  ensure   => '2.1.1',
  provider => 'gem',
}
