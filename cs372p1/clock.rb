################################################################
#
#   CSC 372 Spring 2017 - Project 01
#
#   Author: Yujia Lin
#
#   Instructor: McCann
#
#   Filename: clock.rb
#
################################################################

# This file contains the definition of the class Clock.
class Clock

  # Constructor
  # @param hour:hour, minute:minute
  #
  def initialize (hour=0, minute=0)
    if hour>23
      hour = 23
    end
    if hour<0
      hour= 0
    end

    if minute>59
      minute=59
    end
    if minute<0
      minute=0
    end
    @time = Time.new 2017, 2, 6, hour, minute
  end

  # Setter method
  # @param h:hour, m:minute
  #
  def settime(h, m)
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
    @time = Time.new 2017, 2, 6, h, m
  end

  # Getter methods
  def gethour
    @time.hour
  end

  def getminute
    @time.min
  end

  # Display digital time
  def formattime
    the_time = []

    am = [' _ ', '|_|', '| |']
    pm = [' _ ', '|_|', '|  ']
    space = [' ', ' ', ' ']
    colon = [' ', '.', '.']

    hour = @time.hour
    minute = @time.min

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

  def find_number(number, the_time)
    zero = [' _ ', '| |', '|_|']
    one = ['   ', '  |', '  |']
    two = [' _ ', ' _|', '|_ ']
    three = [' _ ', ' _|', ' _|']
    four = ['   ', '|_|', '  |']
    five = [' _ ', '|_ ', ' _|']
    six = [' _ ', '|_ ', '|_|']
    seven =[' _ ', '  |', '  |']
    eight = [' _ ', '|_|', '|_|']
    nine = [' _ ', '|_|', ' _|']


    if number == 0
      the_time<<zero
    elsif number ==1
      the_time<<one
    elsif number ==2
      the_time<<two
    elsif number ==3
      the_time<<three
    elsif number ==4
      the_time<<four
    elsif number ==5
      the_time<<five
    elsif number ==6
      the_time<<six
    elsif number ==7
      the_time<<seven
    elsif number ==8
      the_time<<eight
    elsif number ==9
      the_time<<nine
    end
    the_time
  end
end