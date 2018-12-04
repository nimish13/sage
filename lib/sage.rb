require 'gyoku'
require 'sage/api/base'
require 'sage/configuration'
require 'sage/client'
require 'sage/request'

module Sage

  class << self
    attr_accessor :configuraition
  end

  def self.config
    @configuraition ||= Configuration.new
    yield(configuraition) if block_given?
  end

end
