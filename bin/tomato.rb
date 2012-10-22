#!/usr/bin/env ruby

require 'growl'
module Tomato
  PERIOD = 25 * 60

  class Log
    FILE_PATH = '~/.tomato.log'

    def initialize
      @file = File.open(File.expand_path(FILE_PATH), 'a')
    end

    def write(message, time)
      @file.puts "#{time.to_s} - #{message}"
    end
  end

  class Timer
    def initialize(time_period = PERIOD, log_file = Log.new)
      @start_time = nil
      @log_file = log_file
      @time_period = time_period
    end

    def start(message)
      @start_time = Time.now
      catch_signals
      notify('Ready, start, go: ' + message)
      @log_file.write(message, @start_time)
      sleep @time_period
      stop
    end

    def stop
      notify('End of tomato')
      @start_time = nil
      @log_file.write('End of tomato', Time.now)
      true
    end

    def catch_signals
      trap("SIGINT") { stop && Process.exit }
    end

    def notify(message)
      Growl.notify {
        self.message = message
        self.icon = :jpeg
      }
    end
  end
end

if __FILE__ == $0
  Process.daemon
  tomato = Tomato::Timer.new()
  tomato.start(ARGV.to_a.join(' '))
end
