class WelcomeController < ApplicationController
  KEYS = %w(RAILS_ENV RACK_ENV PATH DYNO PORT HOSTNAME WAT)

  def index
    @env = ENV.select { |k, v| KEYS.include?(k.to_s) }
  end
end
