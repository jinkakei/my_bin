#!/usr/bin/ruby

# ToDo
#   - make function? (2015-12-09)
#   - 

if ARGV[0] != nil
  log_fname = ARGV[0]
else
  log_fname = "make.log"
end

cmd_str = "make 2>&1 | tee #{log_fname}"
puts "ruby info: #{cmd_str}"
ret = system( cmd_str )
puts "ruby info: ret = #{ret}, logfile = #{log_fname}"
system( "echo \"command: #{cmd_str}\" >> #{log_fname}" )
