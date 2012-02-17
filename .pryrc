# When using pry.binding, the .irbrc is bypassed
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
# stealed from http://lucapette.com/pry/pry-everywhere/

# vim FTW
Pry.config.editor = "mvim -f"

# Prompt with ruby version
Pry.prompt = [proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} > " }, proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} * " }]

%w{map_by_method hirb}.each { |gem| require gem }

# Toys methods
# Stealed from https://gist.github.com/807492
class Array
  def self.toy(n=10, &block)
    block_given? ? Array.new(n,&block) : Array.new(n) {|i| i+1}
  end
end

class Hash
  def self.toy(n=10)
    Hash[Array.toy(n).zip(Array.toy(n){|c| (96+(c+1)).chr})]
  end
end

# rails specific stuff
if defined?(Rails) && Rails.env
  # https://github.com/cldwalker/hirb/issues/46#issuecomment-1870823
  Pry.config.print = proc do |output, value|
    Hirb::View.view_or_page_output(value) || Pry::DEFAULT_PRINT.call(output, value)
  end

  Hirb.enable
end
