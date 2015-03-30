require 'spec_helper'

target_versions = [
  'v0.10.9',
  'v0.11.9',
  'v0.12.0'
]

target_versions.each do|version|
  describe file(home_path + '/.nodenv/versions/' + version) do
    it { should be_directory }
  end
end
