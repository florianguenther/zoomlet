require 'bundler'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.join(File.dirname(__FILE__), 'Gemfile')
require 'bundler/setup' 
require 'sprockets'
require 'fileutils'

task :default => [:build] do
  
end

task :build do
  puts "Building bookmarklet"
  FileUtils.mkdir 'build' unless File.exist? 'build'
  assets = Sprockets::Environment.new() do |env|
    env.logger = Logger.new(STDOUT)
  end
  
  assets.append_path "src"
  
  open("build/zoomlet.js", "w").write( assets["index"] )
end
