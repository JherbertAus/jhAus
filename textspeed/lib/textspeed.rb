# require "textspeed"

# module Textspeed
textspeed = ARGV[0]

class Slowly
end

  def slowly
    yield.each_char { |c| putc c; $stdout.flush; sleep ARGV[0].to_f}
  end
  slowly do
    "Welcome to textspeed.\nThis gem is designed to output text at speed determined by you.\nIf you're using a decimal below zero,\nPlease remember to include the 0 before the decimal point.\n"
  end
