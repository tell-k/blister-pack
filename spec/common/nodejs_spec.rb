require 'spec_helper'

target_versions = [
  'v4.2.3'
  'v5.2.0'
]
target_versions.each do|version|
  describe file(home_path + '/.nodebrew/node/' + version) do
    it { should be_directory }
  end
end

target_versions = [
  'v2.5.0'
  'v3.3.1'
]
target_versions.each do|version|
  describe file(home_path + '/.nodebrew/iojs/' + version) do
    it { should be_directory }
  end
end
