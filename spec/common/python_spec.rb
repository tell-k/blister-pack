require 'spec_helper'

target_packages = %w(python python3)

target_packages.each do|package|
  describe file(homebrew_cellar + '/' + package) do
    it { should be_directory }
  end
end

describe command('which pip') do
  its(:stdout) { should match(%r{/usr/local/bin/pip}) }
end
describe command('which virtualenv') do
  its(:stdout) { should match(%r{/usr/local/bin/virtualenv}) }
end
describe command('which hg') do
  its(:stdout) { should match(%r{/usr/local/bin/hg}) }
end
