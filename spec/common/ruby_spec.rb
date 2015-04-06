require 'spec_helper'

target_versions = [
  '1.9.3-p547',
  '2.1.3'
]
if travis_build_skip?
  puts 'skip rbenv test. ' + __FILE__
else
  target_versions.each do|version|
    describe file(home_path + '/.rbenv/versions/' + version) do
      it { should be_directory }
    end
  end
end

describe command('which rake') do
  its(:stdout) { should match(/rake/) }
end

describe command('which serverspec-init') do
  its(:stdout) { should match(/serverspec-init/) }
end
