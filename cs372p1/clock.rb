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
    # Check range
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
  # @return str: a string will display formatted digital time
  def formattime
    the_time = []

    # AM, PM, white space, colon string store to some arrays
    am = [' _ ', '|_|', '| |']
    pm = [' _ ', '|_|', '|  ']
    space = [' ', ' ', ' ']
    colon = [' ', '.', '.']

    hour = @time.hour
    minute = @time.min

    # Check hour
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

    # Check minute
    if minute >=10
      one = minute.to_s[0].to_i
      two = minute.to_s[1].to_i

      find_number one, the_time
      find_number two, the_time
    else
      find_number 0, the_time
      find_number minute, the_time
    end

    # Put white space
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

  # @param number: which number you want to show, the_time: an array store some numbers
  def find_number(number, the_time)

    # 0 to 9 numbers
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

    case
      when number == 0
        the_time<<zero
      when number ==1
        the_time<<one
      when number ==2
        the_time<<two
      when number ==3
        the_time<<three
      when number ==4
        the_time<<four
      when number ==5
        the_time<<five
      when number ==6
        the_time<<six
      when number ==7
        the_time<<seven
      when number ==8
        the_time<<eight
      else
        number ==9
        the_time<<nine
    end
    the_time
  end
end