$:.unshift File.dirname(__FILE__)

require 'bundler/setup'
Bundler.require

require 'fileutils'

# Cleanup log and pid files
FileUtils.rm_rf("server.log")
FileUtils.rm_rf("server.pid")

# PARAMETERS: embedded, multiprocess, multithread
server_file = ARGV.first + '_server'

require server_file
