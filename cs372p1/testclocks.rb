################################################################
#
#   CSC 372 Spring 2017 - Project 01
#
#   Author: Yujia Lin
#
#   Instructor: McCann
#
#   Filename: testclocks.rb
#
################################################################

require_relative 'clock'
require_relative 'alarmclock'
require 'test/unit'

# The class is unit test case class
class TestClocks < Test::Unit::TestCase

  # Test create a clock object
  def test_create_clock
    clock_one = Clock.new(10, 20)
    assert_equal(10, clock_one.gethour)
    assert_equal(20, clock_one.getminute)
    check = '    _   _  _   _ '+"\n" + '  || |. _|| | |_|'+"\n" + '  ||_|.|_ |_| | |'+"\n"
    assert_equal(check, clock_one.formattime)
  end

  # Test get and set time for clock object
  def test_get_and_settime
    clock_two = Clock.new(19, 19)
    clock_two.settime(9, 10)
    assert_equal(9, clock_two.gethour)
    assert_equal(10, clock_two.getminute)
  end

  # Test when hour is 25 and minute is 60
  def test_25_h_and_60_m
    clock_one = Clock.new(25, 60)
    assert_equal(23, clock_one.gethour)
    assert_equal(59, clock_one.getminute)
    assert_equal("        _  _   _ \n" + "  |  |.|_ |_| |_|\n" + "  |  |. _| _| |  \n", clock_one.formattime)
  end

  # Test when hour is -1 and minute is -2
  def test_n1_h_and_n2_m
    clock_one = Clock.new(-1, -2)
    assert_equal(0, clock_one.gethour)
    assert_equal(0, clock_one.getminute)
    assert_equal(" _   _  _   _ \n" + "| |.| || | |_|\n" + "|_|.|_||_| | |\n", clock_one.formattime)
  end

  # Test creat a alarm clock object
  def test_creat_alarm_clock
    clock_one = AlarmClock.new(9, 30)
    clock_one.setalarm(10, 20)
    assert_equal(10, clock_one.getalarmhour)
    assert_equal(20, clock_one.getalarmminute)
    check = '    _   _  _   _ '+"\n" + '  || |. _|| | |_|'+"\n" + '  ||_|.|_ |_| | |'+"\n"
    assert_equal(check, clock_one.formatalarm)
  end

  # Test when hour is 25 and minute is 60
  def test_25_h_and_60_m_alarm
    clock_one = AlarmClock.new(0, 0)
    clock_one.setalarm(25, 60)
    assert_equal(23, clock_one.getalarmhour)
    assert_equal(59, clock_one.getalarmminute)
    assert_equal("        _  _   _ \n" + "  |  |.|_ |_| |_|\n" + "  |  |. _| _| |  \n", clock_one.formatalarm)
  end

  # Test when hour is -1 and minute is -2
  def test_n1_h_and_n2_m_alarm
    clock_one = AlarmClock.new(0, 0)
    clock_one.setalarm(-1, -2)
    assert_equal(0, clock_one.getalarmhour)
    assert_equal(0, clock_one.getalarmminute)
    assert_equal(" _   _  _   _ \n" + "| |.| || | |_|\n" + "|_|.|_||_| | |\n", clock_one.formatalarm)
  end

end