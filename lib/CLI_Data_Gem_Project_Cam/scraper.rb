module CLI_Data_Gem_Project_Cam
    class Scraper
        attr_accessor :genre
    
        def initialize(genre)
        @genre = genre
        end
        
        def fetch_data
        url = "https://kitsu.io/api/edge/anime?filter[categories]=#{@genre}"
        response = HTTParty.get(url)
        # response.parsed_response  #might not be needed 
        
        anime_list = response["data"][0]["attributes"]["canonicalTitle"]
        
       
        end
        
    end
end 