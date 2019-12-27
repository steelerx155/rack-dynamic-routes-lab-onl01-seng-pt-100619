class Application

  @@items = [Item.new("Apples",5.23), Item.new("Oranges",2.43)]
  @@cart = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{item}\n"
      else
        resp.status = 404
        resp.write "Route not found"
           
     end
      resp.finish
  
      end
    end
end      