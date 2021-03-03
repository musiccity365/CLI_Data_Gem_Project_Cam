module CLI_Data_Gem_Project_Cam

    class CLI 

        def start
            puts ""
            puts "Welcome to the Anime Finder App!"
            puts "This app is used to help the user find new anime's to watch based on the chosen genre!"
            ask_genre
            input = "s"
            until input == "n"
                puts ""
                puts "Thank you for your patience! Would you like to find another list of anime? (y/n)"
                puts ""
                input = gets.strip.downcase
                if input != "n"
                    yes_or_no(input)
                end                  
            end            
            puts ""
            puts "Have a nice day and thank you for using the Anime Finder App!"
            puts ""
            exit
        end
    
        def ask_genre
            puts ""
            puts "This is a list of the available genres to choose from:"
            puts ""
            puts "Action, Adventure, Comedy, Drama, Slice of Life, Fantasy, Magic,"
            puts "Supernatural, Horror, Mystery, Psychological, Romance, and Sci-Fi."
            puts ""
            puts "Please enter the genre of the anime(s) you would like to discover!"
            puts ""
            input = gets.strip
            puts ""
            puts "Thank you! Please be patient, as this app has to read through a lot of data!"
            puts "(If it feels like it's taking too long, try hitting Enter.)"
            genre = validate_input(input)
            shows = Shows.new(genre)
            shows.fetch_data
        end
    
    
        def validate_input(input)
            genre_array = ["action", "adventure", "comedy", "drama", "slice of life", "fantasy", "magic", "supernatural", "horror", "mystery", "psychological", "romance", "sci-fi"]
            until genre_array.include? input.downcase
                puts "Please enter a valid genre!"
                input = gets.strip
            end
            input
        end

        def yes_or_no(input)
            if input == "y" 
                ask_genre
            else 
                puts "Please enter a valid response!"
            end
        end
    end
end 

