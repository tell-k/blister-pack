require 'spec_helper'

target_packages = [
  "python",
  "python3",
]

target_packages.each{|package|
  describe file(homebrew_cellar() + '/' + package) do
    it { should be_directory }
  end
}

describe command('which pip') do
  its(:stdout) { should match /\/usr\/local\/bin\/pip/ }
end
describe command('which virtualenv') do
  its(:stdout) { should match /\/usr\/local\/bin\/virtualenv/ }
end
describe command('which hg') do
  its(:stdout) { should match /\/usr\/local\/bin\/hg/ }
end
