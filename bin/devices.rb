#!/usr/bin/env ruby
require 'pp'
$:.unshift File.join(File.dirname(__FILE__), "../lib")
require 'veralite'
while [ 1 ] do
  vc = VeraLite.client(:bridge => '10.255.0.230')
  if vc.bridge.devicebyid(9).state.service['urn:micasaverde-com:serviceId:SecuritySensor1']['Tripped'] == 1
    print "_"
  else
    print "#"
  end
  sleep(1)
end
