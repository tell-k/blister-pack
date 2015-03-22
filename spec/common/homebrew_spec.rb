require 'spec_helper'

describe command('which brew') do
   its(:stdout) { should match /bin\/brew/ }
end

describe command('brew tap') do
   its(:stdout) { should match /caskroom\/cask/ }
end

target_packages = [
  "autoconf",
  "readline",
  "brew-cask",
  "git",
  "hub",
  "ruby-build",
  "rbenv",
  "rbenv-gem-rehash",
  "rbenv-default-gems",
  "gnu-tar",
  "ack",
  "findutils",
  "nodenv",
]

target_packages.each{|package|
  describe file(homebrew_cellar() + '/' + package) do
    it { should be_directory }
  end
}
