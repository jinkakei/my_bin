#!/usr/bin/ruby
#require "git_k247"
require "~/lib_k247/git_k247"
include Git_K247

if ARGV[0] == "ask"
  exec_gpull = get_y_or_n( "git pull?: " ) 
else
  exec_gpull = "y" 
end

git_gdir_each("pull") if exec_gpull == "y"


puts "End of program #{$0}"
__END__
