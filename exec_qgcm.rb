#!/usr/bin/ruby
require '~/lib_k247/K247_basic'
require '~/lib_k247/K247_qgcm'

# How to use
# $ exec_qgcm casename

# ToDo
#   - continue run

#   - merge gen_get_qgpara.rb
#
#   - 
#   - 
#   - 



watcher = K247_Main_Watch.new

=begin # temporary comment out
# prepare
  exefname = "q-gcm"
  exit_with_msg ("The executable file #{exefname} is not exist") \
    unless File.exist?( exefname )
  
  exit_with_msg ("no casename") unless ARGV[0]
  cname = ARGV[0]
  
  odir = "./outdata_#{cname}"
  exit_with_msg("outdir #{odir} already exists") if File.exist?( odir )
  
  exec_command( "mkdir #{odir}" )
  File.open( "outdata.dat", 'w' ) do | f | f.puts "#{odir}" end
  ##  exec_command( "rmdir #{odir}" ) # for test
=end

# get qgcm paramters
# ToDo: refactoring, or establish
  # show parameters from Fortran Program
    qpara = "get_qgcm_params"
    qp_op = "-warn all"
    qp_e = "#{qpara}.exe"
    qp_f =  "~/bin_k247/#{qpara}.F90"
    exec_command( "ifort #{qp_op} -o #{qp_e} #{qp_f}")
    pret = popen3_wrap( "./#{qp_e}" )
      show_stdoe( pret )
  
  # interpret parameters
    # ToDo: get nlo first, 
    qpara_all    = %w[ nxto nyto nxpo nypo nlo dxo gpoc hoc ]
      qpara_i    = %w[ nxto nyto nxpo nypo nlo ]
      qpara_f    = %w[ dxo ]
      qpara_f_zi = %w[ gpoc ]
      qpara_f_z  = %w[ hoc ]
    qp_ary = {}
    p pret["o"]
#=begin
    # set hash
    pret["o"].each do | l |
      #p line.chomp.split("=")[1].to_f
      # I cannot use eval() @ 2015-10-03
      qpara_i.each do | qp |
        qp_ary[qp] = l.chomp.split("=")[1].to_i  if l.include?( qp )
      end
      qpara_f.each do | qp |
        qp_ary[qp] = l.chomp.split("=")[1].to_f  if l.include?( qp )
      end
      qpara_f_zi.each do | qp |
        qp_ary[qp] = l.chomp.split("=")[1].to_f  if l.include?( qp )
      end
      qpara_f_z.each do | qp |
        if l.include?( qp )
          nums = l.chomp.split("=")[1]
          #qp_ary[qp] = l.chomp.split("      ").to_f
          tmp_z = 2
          for k in 0..tmp_z-1
            p nums.split("      ")[k].to_f
          end
        end
      end
    end
    #p qp_ary
    # plan @ 2015-10-03
    #nxto = qp_ary["nxto"]
#=end

# Under Construction
## set boundary condition
## set initial condition
## exec command
cmd_str = "qsub cntl_q-gcm"



watcher.end_process
