require_relative 'clock'
require_relative 'alarmclock'

cc = Clock.new 17, 59

puts cc.gethour

puts cc.getminute


puts cc.formattime