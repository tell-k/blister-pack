require 'serverspec'

set :backend, :exec

def home_path
  home_path = `echo ~/`
  home_path.chomp
end

def homebrew_prefix
  prefix = `brew --prefix`
  prefix.chomp
end

def homebrew_cellar
  cellar_path = `brew --cellar`
  cellar_path.chomp
end

def homebrew_caskroom
  '/opt/homebrew-cask/Caskroom/'
end

def travis_build_skip?
  ENV['TRAVIS_BUILD_SKIP'] == 'True'
end
