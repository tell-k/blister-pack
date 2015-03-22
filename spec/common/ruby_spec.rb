require 'spec_helper'

target_versions = [
  "1.9.3-p547",
  "2.1.3",
]

target_versions.each{|version|
  describe file(home_path() + '/.rbenv/versions/' + version) do
    it { should be_directory }
  end
}

describe command('which rake') do
  its(:stdout) { should match /\/usr\/bin\/rake/ }
end
describe command('which serverspec-init') do
  its(:stdout) { should match /\/usr\/bin\/serverspec-init/ }
end
