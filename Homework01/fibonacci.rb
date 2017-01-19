#!/usr/bin/ruby

######################################################################
# Assignment: Homework #1: Ruby Exercise
# Author: Your Name (Your E-mail Address)
# Grader: Patrick Hickey / Andrea Padula
#
# Course: CSc 372
# Instructor: L. McCann
# Due Date: January 20, 2017
#
# Description: A simple type-in exercise to ensure that students
# are able to successfully use ruby on lectura.
#
# Language: Ruby
# Ex. Packages: None.
#
# Deficiencies: None.
######################################################################
class DemoRuby
    def fibonacci_iterative(n)
        if n == 0 || n == 1
            n
        else
            older = 0
            old = 1
            for i in 2..n
                current = older+old
                older = old
                old = current
            end
            current
        end
    end
end
newObject = DemoRuby.new
puts "The first 10 Fibonacci numbers are:"
for i in 0..9
    puts newObject.fibonacci_iterative(i)
end
