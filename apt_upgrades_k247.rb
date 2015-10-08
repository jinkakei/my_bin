#!/usr/bin/ruby

log_dir = "/home/work/log/upgrade/"
time_str = Time.now.strftime("%Y%m%d_%H%M_%S")
upd_log = "#{log_dir}apt-get_update.#{time_str}" 
upg_log = "#{log_dir}apt-get_upgrade.#{time_str}" 

upd_cmd = "sudo apt-get update 2>&1 | tee #{upd_log}"
upg_cmd = "sudo apt-get upgrade 2>&1 | tee #{upg_log}"

if File::exist?( log_dir )
  puts(upd_cmd); system(upd_cmd)
  puts(upg_cmd); system(upg_cmd)
else
  puts "Error, no log_dir. make #{log_dir}"
end
