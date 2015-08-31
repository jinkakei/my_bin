#!/usr/bin/ruby

# create: 2015-08-22
# How to Use
#   > qtail QJOBID

exec( "qcat -o #{ARGV[0]} | tail " )

