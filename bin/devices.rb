#!/usr/bin/env ruby
require 'pp'
$:.unshift File.join(File.dirname(__FILE__), "../lib")
require 'veralite'
# 8 == stall door
# 9 == office door
while [ 1 ] do
 vc = VeraLite.client(:bridge => '10.255.0.230')
 tripped = vc.bridge.devicebyid(8).state.service['urn:micasaverde-com:serviceId:SecuritySensor1']['Tripped'].to_i
 if tripped == 1
   print "_"
 else
   print "#"
 end
  sleep(1)
end
