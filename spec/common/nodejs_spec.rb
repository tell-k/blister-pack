require 'spec_helper'

target_versions = [
    "v0.8.9",
    "v0.9.9",
    "v0.10.9",
    "v0.11.9",
]

target_versions.each{|version|
  describe file(home_path() + "/.nodenv/versions/" + version) do
    it { should be_directory }
  end
}
