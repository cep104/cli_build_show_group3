class CLI 

    def start 
        puts "Welcome to TV Maze! Enter your name please."
        input = user_input
        greeting(input)
    end

    def user_input
        gets.strip
    end

    def greeting(name)
        puts "Nice to meet you #{name}. Enter a TV show or keyword to see a list of shows. If you would like to exit type exit."
        menu
    end

    def menu 
        input = user_input
        API.get_data(input)
        if input == "please exit"
           please_exit
        elsif Show.all.length != 0 
            tv_list
            #show a list of tv shows
        else
            invalid
        end

    end

    def please_exit 
        puts "Thank you for joining see you again soon!"
    end

    def invalid 
        puts "hmmmm... please try again"
        menu
    end

    def tv_list 
        Show.all.each.with_index(1) do |show, index|
            puts "#{index}. #{show.name}"
        end
        get_show_details 
    end

    def get_show_details 
        puts "please enter the name of the show you want to learn more about or enter please exit to exit"
        input = user_input 
        show = Show.find_show(input) 
        show_details(show)
    end

    def show_details(show)
        puts "#{show.name}"
        puts "#{show.runtime}"
        show.genres.each do |genre| 
            puts "#{genre}"
        end
    end
    # binding.pry
end