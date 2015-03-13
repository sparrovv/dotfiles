#!/usr/bin/env ruby

# Very naive way to monitor Internet access.
# If can't connect to google, then it restarts ariport.
#
# I've been having these problems since I switched to new macbook and couldn't find the real cause.

# Requirements
# gem install net-ping

# Usage
# sudo ./wifimonitor.rb

require 'net/ping'
require 'logger'

logger = Logger.new(STDOUT)
logger.level = Logger::INFO

count = 0
loop do
  p1 = Net::Ping::TCP.new('www.google.com', 'http')
  unless p1.ping?
    logger.info('No ping')
    count += 1
    sleep 2
    if count > 3
      logger.info('4th retry, restarting')
      # restart wifi
      `/usr/sbin/networksetup -setairportpower en1 off`
      `/usr/sbin/networksetup -setairportpower en1 on`
      logger.info('Waiting 7s')
      sleep 7
    else
      next
    end
  end

  count = 0
  sleep 2
end
