class Application

  @@items = ["Apples","Carrots","Pears"]
  @@cart = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{item}\n"
        elsif
      resp.write "Route not found"
      resp.status = 404
     end
      end
      resp.finish
    end
      end
    end
end      