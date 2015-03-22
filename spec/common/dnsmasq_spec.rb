require 'spec_helper'

describe file('/etc/resolver') do
  it { should be_directory }
end

describe file('/etc/resolver/dev') do
  it { should be_file }
end

describe file(homebrew_prefix() + '/etc/dnsmasq.conf') do
  it { should be_file }
end

describe file(homebrew_cellar() + '/dnsmasq') do
  it { should be_directory }
end

describe file('/Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist') do
  it { should be_symlink }
end

describe service('dnsmasq') do
  it { should be_running }
end
