#!/usr/bin/ruby

if ARGV[0] == nil
  puts "input command"
  puts "How to Use: $ cmd_with_log.rb SHELL_COMMAND [LogFileNAME]"
  puts "abort"
  exit -1
end
cmd_input = ARGV[0]

if ARGV[1] != nil
  log_fname = ARGV[1]
else
  log_fname = "temporary.log"
end

cmd_str = "#{cmd_input} 2>&1 | tee #{log_fname}"
puts "ruby info: #{cmd_str}"
ret = system( cmd_str )
puts "ruby info: ret = #{ret}, logfile = #{log_fname}"
