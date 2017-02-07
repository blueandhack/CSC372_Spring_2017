require_relative 'clock'
require_relative 'alarmclock'

cc = Clock.new 23, 59

puts cc.gethour

puts cc.getminute


puts cc.formattime