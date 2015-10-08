#!/usr/bin/ruby

log_dir = "/home/work/log/upgrade/"
time_str = Time.now.strftime("%Y%m%d_%H%M_%S")
upd_log = "#{log_dir}apt-get_update.#{time_str}" 
upg_log = "#{log_dir}apt-get_upgrade.#{time_str}" 

if File::exist?( log_dir )
# ? sudo
  system("sudo apt-get update 2>&1 | tee #{upd_log}")
  system("sudo apt-get upgrade 2>&1 | tee #{upg_log}")
else
  puts "Error, no log_dir. make #{log_dir}"
end
