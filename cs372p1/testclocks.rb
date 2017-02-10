require_relative 'clock'
require_relative 'alarmclock'

cc = Clock.new 12, 59
puts cc.gethour
puts cc.getminute
puts cc.formattime