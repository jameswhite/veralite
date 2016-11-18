#!/usr/bin/env ruby
require 'date'
$:.unshift File.join(File.dirname(__FILE__), "../lib")
require 'veralite'
vc = VeraLite.client(:bridge => '10.255.0.230')
puts "Current Bikeshed Temperature: #{vc.bridge.devicebyid(13).state.service["urn:upnp-org:serviceId:TemperatureSensor1"]["CurrentTemperature"]}F"
