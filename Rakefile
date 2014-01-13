require "rake/testtask"

Rake::TestTask.new do |task| 
  task.test_files = FileList['spec/lib/gnip/*_spec.rb']
  task.verbose = true
end

task :default => :test
