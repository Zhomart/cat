# This file is used by Rack-based servers to start the application.
puts "-- Rails env = #{ENV['RAILS_ENV']}"

File.open('/tmp/cat-environment', 'w') do |f|
  f.write(ENV['RAILS_ENV'])
end

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application
