#!/usr/bin/env ruby

require File.expand_path(File.join(File.expand_path(__FILE__), "..", "..", "lib", "nesty"))

class MyError < StandardError
  include Nesty::NestedError
end

#just run this to see what get spit out to the console

begin
  1/0
rescue => e
  raise MyError.new("Gotta catch 'em all!")
end
