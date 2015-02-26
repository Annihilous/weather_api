class WelcomeController < ApplicationController

require 'open-uri'
require 'json'

def index

end
  end

  def codex

  	open('http://api.wunderground.com/api/14161548f86cc2af/geolookup/conditions/q/GA/Atlanta.json') do |f|
	  json_string = f.read
	  parsed_json = JSON.parse(json_string)
	  @city = parsed_json['location']['city']
	  @state = parsed_json['location']['state']
	  @temp_f = parsed_json['current_observation']['temp_f']
	  @icon = parsed_json['current_observation']['icon_url']
  end
end