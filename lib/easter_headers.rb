require 'easter_headers/middleware.rb'

module EasterHeaders
  def self.init(header, value)
    Rails.application.config.middleware.use EasterHeaders::Middleware, key: header, value: value
  end
end