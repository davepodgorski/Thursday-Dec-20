require 'httparty'

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)

toronto_wards_json.each do |ward|
  puts ward["name"]
end

candidates = HTTParty.get('https://represent.opennorth.ca/candidates')
candidates_json = JSON.parse(candidates.body)

candidates_json['objects'].each do |candidate|
  puts candidate["party_name"]
end
