require 'rake'
require 'rake/clean'
require 'rake/testtask'

CLEAN << FileList['*.gem']

namespace 'gem' do
  desc 'Build the windows-pr gem'
  task :build do
    spec = eval(IO.read('windows-pr.gemspec'))
    Gem::Builder.new(spec).build
  end

  desc 'Install the windows-pr gem'
  task :install => [:build] do
    file = Dir["*.gem"].first
    sh "gem install #{file}"
  end
end

namespace 'test' do
  Rake::TestTask.new('all') do |t|
    t.warning = true
    t.test_files = FileList['test/tc*']
  end

  Rake::TestTask.new('clipboard') do |t|
    t.warning = true
    t.verbose = true
    t.test_files = FileList['test/tc_clipboard.rb']
  end

  Rake::TestTask.new('unicode') do |t|
    t.warning = true
    t.verbose = true
    t.test_files = FileList['test/tc_unicode.rb']
  end

  Rake::TestTask.new('volume') do |t|
    t.warning = true
    t.verbose = true
    t.test_files = FileList['test/tc_volume.rb']
  end
end
