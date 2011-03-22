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

LINODE_API_KEY = ""
EMAIL_ADDRESS = ""

class Zone < ActiveResource::Base
  def initialize
    @l = Linode.new(:api_key => LINODE_API_KEY)
  end
  
  def list
    puts @l.domain.list
  end
end

zone = Zone.new
zone.list