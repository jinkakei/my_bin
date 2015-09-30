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

=begin # temporary comment out
exit_with_msg ("no casename") unless ARGV[0]
cname = ARGV[0]

odir = "./outdata_#{cname}"
exit_with_msg("outdir #{odir} already exists") if File.exist?( odir )

exec_command( "mkdir #{odir}" )
File.open( "outdata.dat", 'w' ) do | f | f.puts "#{odir}" end
##  exec_command( "rmdir #{odir}" ) # for test
=end

get_qpara = "get_qgcm_params"
exec_command( "ifort -o #{get_qpara}.exe ~/bin_k247/#{get_qpara}.F90")
exec_command( "./#{get_qpara}.exe")

# Under Construction
## set boundary condition
## set initial condition
## exec command
cmd_str = "qsub cntl_q-gcm"



watcher.end_process
