require "podUpdater/version"
require "podUpdater/pod_push"


module PodUpdater

	def self.run(version)
		path = File.expand_path(Dir.pwd)		
		pushPodToSevice(path,version)
	end

end

require 'optparse'

options = {}
option_parser = OptionParser.new do |opts|

  opts.banner = 'here is help messages of the command line tool'

  options[:version] = nil
  opts.on('-v', '--version [version]', String, 'the podspec\'s version') do |version|
    options[:version] = version
  end

end.parse!

unless options[:version]
	
	abort("ABORTED! You forgot pass a version value with command \'-v [version]\'")
	exit
end
puts "哈哈哈开始"
PodUpdater.run(options[:version])