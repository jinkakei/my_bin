#!/usr/bin/ruby

target_dir = "../src/"
#target_dir = "../src_test29/"
work_dir = "."
files = ["*.F", "*.f", "input.params", \
         "make.macro", "make.config", "Makefile", \
         "fftpack/" ]

#=begin
files.each do | f |
  cmd_str =  "ln -s #{target_dir}#{f} #{work_dir}"
  p cmd_str
  ret = system( cmd_str )
end
#=end


