# Task
#     Write a program to show all months that have this same characteristic
# 				of five full weekends from the year 1900 through 2100 (Gregorian calendar).
#     Show the number of months with this property (there should be 201).
#     Show at least the first and last five dates, in order.

# Algorithm suggestions
#     Count the number of Fridays, Saturdays, and Sundays in every month.
#     Find all of the 31-day months that begin on Friday.

require 'date'

class FiveWeekends

  attr_reader :month_with_5w

  def initialize(from_year, to_year)
    @from_year = from_year
    @to_year = to_year
    @month_with_5w = []
    call
  end

  def call
    (@from_year..@to_year).each do |year|
      (1..12).each do |month|
        end_of_month = Date.new(year, month, -1)
        @month_with_5w << end_of_month if month_has_5_weekends(end_of_month)
      end
    end
  end

  def print_months_with_5w
  	puts "There are #{@month_with_5w.count} months with 5 weekends from #{@from_year} to #{@to_year}: \n"
    @month_with_5w.each do |date|
    	puts "#{date.strftime('%b %Y')} \n"
    end
    "Done"
  end

  def month_has_5_weekends(date)
  	date.sunday? and date.day == 31
  end
end
