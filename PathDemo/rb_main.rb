#
# rb_main.rb
# PathDemo
#
# Created by Laurent Sansonetti on 3/12/08.
# Copyright __MyCompanyName__ 2008. All rights reserved.
#

# Loading the Cocoa framework. If you need to load more frameworks, you can
# do that here too.
framework 'Cocoa'
begin
  # for OSX 10.8
  framework 'CoreGraphics'
rescue
end
  

# Loading all the Ruby project files.
dir_path = NSBundle.mainBundle.resourcePath.fileSystemRepresentation
Dir.entries(dir_path).each do |path|
  if path != File.basename(__FILE__) and path[-3..-1] == '.rb'
    require(path)
  end
end

# Starting the Cocoa main loop.
NSApplicationMain(0, nil)
