# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
require "rack-rewrite"

ENV['RACK_ENV'] ||= 'development'

if ENV['RACK_ENV'] == 'development'
  ENV['SITE_URL'] = 'secventures.com'
else
  ENV['SITE_URL'] = 'secventures.com'
end

use Rack::Rewrite do
  r301 /.*/,  Proc.new {|path, rack_env| "http://www.#{rack_env['SERVER_NAME']}#{path}" },     :if => Proc.new {|rack_env| ! (rack_env['SERVER_NAME'] =~ /www\./i)}
end
run Rails.application
