#!/usr/bin/env ruby

require 'barge'

barge = Barge::Client.new do |config|
    config.access_token = ENV['DIGITALOCEAN_TOKEN']
end

droplets = barge.droplet.all.droplets

droplets.each do |droplet|
    puts "#{droplet.name} (id: #{droplet.id})"
end
