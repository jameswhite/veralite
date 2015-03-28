#!/usr/bin/env ruby
require 'date'
$:.unshift File.join(File.dirname(__FILE__), "../lib")
require 'veralite'
# 8 == stall door
# 9 == office door
vc = VeraLite.client(:bridge => '10.255.0.230')
last_tripped = vc.bridge.devicebyid(8).state.service['urn:micasaverde-com:serviceId:SecuritySensor1']['LastTrip']
puts last_tripped
format = "%d/%m/%Y %H:%M:%S"
puts "#{DateTime.strptime(last_tripped,"%s").new_offset(-5.0/24)} (#{(Time.now.to_i - last_tripped.to_i)/60} min #{(Time.now.to_i - last_tripped.to_i) % 60}s ago)"
