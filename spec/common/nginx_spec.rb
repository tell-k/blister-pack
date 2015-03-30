require 'spec_helper'

describe file(homebrew_cellar + '/nginx') do
  it { should be_directory }
end

describe file(homebrew_prefix + '/etc/nginx/sites-available') do
  it { should be_directory }
end

describe file(homebrew_prefix + '/etc/nginx/sites-enabled') do
  it { should be_directory }
end

describe file(homebrew_prefix + '/etc/nginx.conf') do
  it { should be_file }
end

describe file(homebrew_prefix + '/etc/nginx/sites-available/default.conf') do
  it { should be_file }
end

describe file(homebrew_prefix + '/etc/nginx/sites-enabled/default.conf') do
  it { should be_symlink }
end

describe file('/Library/LaunchDaemons/homebrew.mxcl.nginx.plist') do
  it { should be_file }
end

describe service('nginx') do
  it { should be_running }
end
