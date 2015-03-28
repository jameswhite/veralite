#!/usr/bin/env ruby
require 'pp'
$:.unshift File.join(File.dirname(__FILE__), "../lib")
require 'veralite'
vc = VeraLite.client(:bridge => '10.255.0.230')
pp vc.bridge
puts "##########################################################################################"
vc.bridge.devicebyid(9).states.each do |state|
  puts ":id => #{state.id}, :service => #{state.service}, :#{state.variable} => #{state.value}"
end
