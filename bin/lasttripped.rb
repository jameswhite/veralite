#!/usr/bin/env ruby
require 'date'
$:.unshift File.join(File.dirname(__FILE__), "../lib")
require 'veralite'
# 8 == stall door
# 9 == office door
vc = VeraLite.client(:bridge => '10.255.0.230')
last_tripped = vc.bridge.devicebyid(8).state.service['urn:micasaverde-com:serviceId:SecuritySensor1']['LastTrip']
print "#{DateTime.strptime(last_tripped,"%s").new_offset(-5.0/24).strftime(format='%H:%M:%S')} ("
print "#{(Time.now.to_i - last_tripped.to_i)/3600}h " if ((Time.now.to_i - last_tripped.to_i)/3600) > 0
print "#{((Time.now.to_i - last_tripped.to_i)/60) % 60}m " if (((Time.now.to_i - last_tripped.to_i)/60) % 60) > 0
print "#{(Time.now.to_i - last_tripped.to_i) % 60}s ago"
puts ")"
