#!/usr/bin/env ruby
require 'barge'

barge = Barge::Client.new do |config|
    config.access_token = ENV['DIGITALOCEAN_TOKEN']
end

options = {name: 'watson-riak-'+rand.to_s.slice(2,10), region: 'nyc2', image: 4686570, size: '8gb' }

d = barge.droplet.create(options)

if d.success?
  puts "Created droplet #{d.droplet.name} with id #{d.droplet.id}"
else
  puts "It seems we failed to create a new droplet"
end
