require 'net/http'
require 'open-uri'
require 'json'
 
class GetRequester
 
  def initialize(url)
    @url = url
  end
    
 
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    programs = JSON.parse(self.get_response_body)
    programs.collect do |program|
      program[]  
    end
  end
 
end
 
# # programs = GetPrograms.new.get_programs
# # puts programs

# programs = GetPrograms.new
# puts programs.program_school.uniq