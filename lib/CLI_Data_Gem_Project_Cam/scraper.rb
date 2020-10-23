class CLI_Data_Gem_Project_Cam::Scraper
    attr_accessor :genre
  
    def initialize(genre)
      @genre = genre
    end
    
    def fetch_data
      url = "https://kitsu.io/api/edge/anime?filter[categories]=#{@genre}"
      response = HTTParty.get(url)
      response.parsed_response  #might not be needed 
      binding.pry
      # anime_list = response["main"][]
    end

  end
