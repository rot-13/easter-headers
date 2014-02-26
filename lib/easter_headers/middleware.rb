module EasterHeaders
  class Middleware

    def initialize(app, options)
      @app = app
      @options = options
    end

    def key
      @options[:key]
    end

    def value
      @options[:value]
    end

    def call(env)
      status, headers, response = @app.call(env)

      headers[key] = value

      [status, headers, response]
    end
  end
end
