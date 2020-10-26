module CLI_Data_Gem_Project_Cam

    class CLI

        def start
            puts "Welcome to the Anime Finder App!"
            puts "This app is used to help the user find new anime's to watch based on the chosen genre!"
            ask_genre
        end
    
        def ask_genre
            puts ""
            puts "This is a list of the available genres to choose from:"
            puts "Action, Adventure, Comedy, Drama, Slice of Life, Fantasy, Magic, Supernatural, Horror, Myster, Psychological, Romance, and Sci-Fi"
            puts ""
            puts "Please enter the genre of the anime(s) you would like to discover!"
            input = gets.strip.to_i
            genre = validate_input(input)
            api = Scraper.new(genre)
            api.fetch_data
        end
    
    
        def validate_input(input)
            until input = "action" || "adventure" || "comedy" || "drama" || "slice of life" || "fantasy" || "magic" || "supernatural" || "horror" || "mystery" || "psychological" || "romance" || "sci-fi"
                puts "Please enter a valid genre"
                input = gets.strip.to_i
            end
            input
        end

        def next_move(input)
            puts "Would you like to find another anime? (y/n)"
            until input == "n"

            end
          
        end
        
    end
end 