class CLI_Data_Gem_Project_Cam::CLI

    def start
      puts "Welcome to the Anime Finder App!"
      ask_genre
    end
  
    def ask_genre
      puts "Please enter the genre of the anime(s) you would like to discover!"
      input = gets.strip.to_i
      genre = validate_input(input)
      api = CLI_Data_Gem_Project_Cam::Scraper.new(genre)
      api.fetch_data
    end
  
  
    def validate_input(input)
      until input = "action" | "adventure" | "comedy" | "Drama" | "Slice of Life" | "Fantasy" | "Magic" | "Supernatural" | "Horror" | "Mystery" | "Psychological" | "Romance" | "Sci-Fi"
        puts "Please enter a valid genre"
        input = gets.strip.to_i
      end
      input
    end
  end