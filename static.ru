# The static content rooted in the build directory at:
# http://0.0.0.0:3000/
#

root = File.join( Dir.pwd, 'build')
puts ">>> Serving: #{root}"
run Rack::Directory.new("#{root}")