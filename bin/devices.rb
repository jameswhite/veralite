#!/usr/bin/env ruby
require 'pp'
$:.unshift File.join(File.dirname(__FILE__), "../lib")
require 'veralite'
vc = VeraLite.client(:bridge => '10.255.0.230')
puts "device(8).status = #{vc.bridge.devicebyid(8).status}"
puts "device(9).status = #{vc.bridge.devicebyid(9).status}"
