require 'rake'
require 'rspec/core/rake_task'

task serverspec: 'serverspec:all'
task default: :serverspec

namespace :serverspec do
  targets = []
  project_root = File.dirname(__FILE__)
  Dir.glob([project_root + '/spec/*']).each do |dir|
    next unless File.directory?(dir)
    targets << dir
  end

  task all: targets
  task default: :all

  targets.each do |target|
    desc "Run serverspec tests to #{target}"
    RSpec::Core::RakeTask.new(target.to_sym) do |t|
      puts 'target: ' + target.gsub(project_root, '') + '/*_spec.rb'
      ENV['TARGET_HOST'] = target
      t.pattern = "#{target}/*_spec.rb"
      t.verbose = false
    end
  end
end
