require 'spec_helper'

target_versions = [
  'v5.12.0'
  'v6.9.3'
]
target_versions.each do|version|
  describe file(home_path + '/.nodebrew/node/' + version) do
    it { should be_directory }
  end
end
