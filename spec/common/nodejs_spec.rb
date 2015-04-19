require 'spec_helper'

target_versions = [
  'v0.10.9',
  'v0.11.9',
  'v0.12.2'
]

target_versions.each do|version|
  describe file(home_path + '/.nodebrew/node/' + version) do
    it { should be_directory }
  end
end
