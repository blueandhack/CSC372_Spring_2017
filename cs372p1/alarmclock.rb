################################################################
#
#   CSC 372 Spring 2017 - Project 01
#
#   Author: Yujia Lin
#
#   Instructor: McCann
#
#   Filename: alarmclock.rb
#
################################################################

# This file contains the definition of the class AlarmClock. AlarmClock inherits from
# Clock, and stores the time of the alarm
class AlarmClock < Clock

  # Constructor
  # @param h:hour, m:minute
  #
  def setalarm(h, m)
    if h>23
      h = 23
    end
    if h<0
      h= 0
    end

    if m>59
      m=59
    end
    if m<0
      m=0
    end
    @alarm_time = Time.new 2017, 2, 6, h, m
  end

  # Getter methods
  def getalarmhour
    @alarm_time.hour
  end

  def getalarmminute
    @alarm_time.min
  end

  # Display digital time
  def formatalarm
    the_time = []

    am = [' _ ', '|_|', '| |']
    pm = [' _ ', '|_|', '|  ']
    space = [' ', ' ', ' ']
    colon = [' ', '.', '.']

    hour = @alarm_time.hour
    minute = @alarm_time.min

    mark = 'a'
    if hour>12
      hour = hour-12
      mark = 'p'
    elsif hour == 12
      mark = 'p'
    end

    if hour>=10
      one = hour.to_s[0].to_i
      two = hour.to_s[1].to_i

      find_number one, the_time
      find_number two, the_time

    else
      find_number hour, the_time
    end

    the_time << colon

    if minute >=10
      one = minute.to_s[0].to_i
      two = minute.to_s[1].to_i

      find_number one, the_time
      find_number two, the_time
    else
      find_number 0, the_time
      find_number minute, the_time
    end

    the_time << space

    # Check PM or AM
    if mark == 'p'
      the_time << pm
    else
      the_time << am
    end

    str = ''

    t = 0
    while t < 3 do
      the_time.each do |chars|
        str += chars[t]
      end
      str += "\n"
      t+=1
    end

    printf '%s', str
    str
  end

end