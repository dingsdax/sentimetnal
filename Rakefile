require "bundler/gem_tasks"
require "rake"

gemspec = eval(File.read(Dir["*.gemspec"].first))

task :default => ["test:all"]

desc "Validate the gemspec"
task :gemspec do
  gemspec.validate
end

desc "Clean automatically generated files"
task :clean do
  FileUtils.rm_rf "pkg"
end

desc "Check syntax"
task :syntax do
  Dir["**/*.rb"].each do |file|
    print "#{file}: "
    system("ruby -c #{file}")
  end
end

namespace :test do
  desc "Run all tests"
  task :all do
    Dir["spec/**/*_spec.rb"].each do |test_path|
      system "rspec #{test_path}"
    end
  end
end