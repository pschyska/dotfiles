# kanged from http://lucapette.com/pry/pry-everywhere/

# https://github.com/carlhuda/bundler/issues/183#issuecomment-1149953
if defined?(::Bundler) && !@bundler_global_gemset_set
  global_gemset = ENV['GEM_PATH'].split(':').grep(/ruby.*@global/).first
  if global_gemset
    all_global_gem_paths = Dir.glob("#{global_gemset}/gems/*")
    all_global_gem_paths.each do |p|
      gem_path = "#{p}/lib"
      $LOAD_PATH << gem_path
    end
  end
  @bundler_global_gemset_set = true
  puts "global gemset added to load path"
end
# Use Pry everywhere
#require "rubygems"
#require 'pry'
#Pry.start
#exit
