# This file is used by Rack-based servers to start the application.
puts "-- Rails env = #{ENV['RAILS_ENV']}"

File.open("/tmp/cat-ENV.txt", "w") { |f| f.write(ENV.inspect)  }
File.open("/tmp/cat-default-env.txt", "w") { |f| f.write(`env`)  }

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application
