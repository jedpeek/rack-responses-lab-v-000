class Application

  def call(env)
    resp = Rack::Response.new
    t = time.now(hour)
    resp.write t
    if t > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end
