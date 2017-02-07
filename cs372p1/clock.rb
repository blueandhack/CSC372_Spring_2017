class Clock
  def initialize (hour, minute)
    @time = Time.new 2017, 2, 6, hour, minute
  end

  def settime(h, m)
    @time = Time.new 2017, 2, 6, hour, minute
  end

  def gethour
    @time.hour
  end

  def getminute
    @time.min
  end

  def formattime
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
    am = [' _ ', '|_|', '| |']
    pm = [' _ ', '|_|', '|  ']
    space = [' ', ' ', ' ']
    colon = [' ', '.', '.']

    # puts zero, one, two, three, four, five, six, seven, eight, nine, am, pm, space, colon

    hour = @time.hour
    mark = 'a'
    if hour>12
      hour = hour-12
      mark = 'p'
    end

    if hour<10

    else
    puts hour%10
    end

  end

end
