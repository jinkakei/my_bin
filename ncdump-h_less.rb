#!/usr/bin/ruby

# create: 2015-08-22
# How to Use
#   > ncdump-h_less NCFILE_PATH

exec( "ncdump -h #{ARGV[0]} | less " )

