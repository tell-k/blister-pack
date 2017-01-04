require 'spec_helper'

target_packages = [
  'golang',
]

target_packages.each do|package|
  describe file(homebrew_cellar + '/' + package) do
    it { should be_directory }
  end
end
describe command('which go') do
  its(:stdout) { should match(%r{/usr/local/bin/go}) }
end
