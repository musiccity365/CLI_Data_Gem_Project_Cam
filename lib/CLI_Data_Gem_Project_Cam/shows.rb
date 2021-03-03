require "httparty"

module CLI_Data_Gem_Project_Cam

    class Shows 
        attr_accessor :title, :genre
        
        @@all = [] 

        def initialize(genre)
            @title = title 
            @genre = genre 
        end 

        def self.create(user_input)
            user_input = self.new(user_input)
            user_input.save
            user_input
        end

        def fetch_data
            url = "https://kitsu.io/api/edge/anime?filter[categories]=#{@genre}"
            response = HTTParty.get(url)
            anime_list = response["data"]
            puts ""
            anime_list.each do |show|
                puts show["attributes"]["canonicalTitle"].strip
            end
        end
    end 
end 