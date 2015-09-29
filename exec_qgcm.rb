#!/usr/bin/ruby
require '~/lib_k247/K247_basic'
require '~/lib_k247/K247_qgcm'

# How to use
# $ exec_qgcm casename

# ToDo
#   - continue run

#   - separateexit_msg ?
#   - 
#   - 
#   - 



watcher = K247_Main_Watch.new

exefname = "q-gcm"
exit_with_msg ("The executable file #{exefname} is not exist") \
  unless File.exist?( exefname )

=begin
exit_with_msg ("no casename") unless ARGV[0]
cname = ARGV[0]

odir = "./outdata_#{cname}"
exit_with_msg("outdir #{odir} already exists") if File.exist?( odir )

exec_command( "mkdir #{odir}" )
  exec_command( "rmdir #{odir}" ) # for test
=end


exec_command( "ifort -o get_param.exe ~/bin_k247/get_param.F90")
exec_command( "./get_param.exe")

# Under Construction
## set boundary condition
## set initial condition
## exec command
cmd_str = "qsub cntl_q-gcm"



watcher.end_process
