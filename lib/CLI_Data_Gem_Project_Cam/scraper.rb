require 'httparty'

module CLI_Data_Gem_Project_Cam
    class Scraper
        
        attr_accessor :genre
    
        def initialize(genre)
            @genre = genre
        end
        
        def fetch_data
            url = "https://kitsu.io/api/edge/anime?filter[categories]=#{@genre}"
            # binding.pry
            response = HTTParty.get(url)
            # response.parsed_response  #might not be needed 
            anime_list = response["data"]
            # binding.pry
            puts ""
            anime_list.each do |show|
                puts show["attributes"]["canonicalTitle"].strip
            end

        end
    end
end 


# Yup