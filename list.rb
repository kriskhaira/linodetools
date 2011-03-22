#!/usr/bin/env ruby
require 'rubygems'
require 'active_resource'
require 'logger'
require 'linode'

$LOG = Logger.new($stdout)

def error(message)
  $LOG.fatal(message)
  exit
end

LINODE_API_KEY = IO.readlines('api_key.txt').to_s
EMAIL_ADDRESS = IO.readlines('api_email.txt').to_s

class Zone < ActiveResource::Base
  def initialize
    @l = Linode.new(:api_key => LINODE_API_KEY)
  end
  
  def list
    puts @l.domain.list
  end
end

puts LINODE_API_KEY

zone = Zone.new
zone.list