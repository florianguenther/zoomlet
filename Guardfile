
# guard 'sass', :input => '_scss', :output => 'assets', :extension => ''

guard 'shell' do
  watch(%r{src/.*\.(js|coffee)}) { `rake build` }
end

# guard 'livereload' do
#   watch(%r{(_site).+\.(js|html)})
#   watch(%r{(_site/assets).+\.(css|js)})
# end
