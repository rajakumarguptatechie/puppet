specs(integration-test=rSpec)=use to check code quality/logic
URL: https://rspec-puppet.com/documentation
tests(Acceptance-test=inSpec/kitchen)=validateds resource desired state as defined in manifests
URL: https://docs.chef.io/inspec

Resource generic definitation
resource_type { 'Title':
  attribute01 => value01,
  attribute02 => value02,
  ......................
  attribute0n => value0n,
} 

If resource is not pre-defined in puppet:
1. Use exec resource
Example:
exec {'Rule to allow http and https traffic':
  command => 'iptables -A INPUT -p 80 -j ACCEPT;iptables -A INPUT -p 8080 -j ACCEPT'
  path    => [/usr/bin', '/usr/sbin'],
}
2. Call required module which configure the required resource
3. Create custom resource by using Resource API
https://puppet.com/docs/puppet/6/create_types_and_providers_resource_api.html
