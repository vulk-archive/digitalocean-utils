#!/usr/bin/env ruby

require 'barge'
require 'highline/import'

barge = Barge::Client.new do |config|
    config.access_token = ENV['DIGITALOCEAN_TOKEN']
end

exclude_droplets = ['www.vulk.co']
droplet_name=ARGV[0]


def yesno(prompt = 'Continue?', default = true)
  a = ''
  s = default ? '[Y/n]' : '[y/N]'
  d = default ? 'y' : 'n'
  until %w[y n].include? a
    a = ask("#{prompt} #{s} ") { |q| q.limit = 1; q.case = :downcase }
    a = d if a.length == 0
  end
  a == 'y'
end


if droplet_name.nil?
  puts "Provide droplet name"
  exit(1)
elsif exclude_droplets.include?(droplet_name)
  puts "Deleting droplet #{droplet_name} is not allowed"
  exit(0)
end

droplets = barge.droplet.all.droplets

droplets.each do |droplet|
  if droplet.name == droplet_name
    puts "Found droplet #{droplet.name} with id #{droplet.id}"
    if yesno("Shall I destory it?", false)
      if barge.droplet.destroy(droplet.id).success?
        puts "Destroying..."
      else
        puts "Problem sending destorying command for droplet (#{droplet.id})"
      end
    end
    exit(0)
  end
end
