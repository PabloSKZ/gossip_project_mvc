class Router

    def initialize
        @controller = Controller.new
    end

    def perform
        puts "Bienvenue dans le Gossip Project"

        while true
            puts "Menu :"
            puts "1. Créer un Gossip"
            puts "2. Afficher les Gossips"
            puts "4. Quitter l'app"
            print "> "
            choice = gets.chomp
            puts "\n\n"

            case choice 
            when "1"
                puts "\n\n"
                @controller.create_gossip
            when "2"
                puts "\n\n"
                @controller.index_gossips
            when "3"
                puts "\n\n"
                @controller.destroy_gossip
            when "4"
                puts "\n\n"
                puts "Tchao !"
                puts "\n\n"
                break
            else
                puts "\n\n"
                puts "Relis bien, concentres toi"
                puts "\n\n"
            end
        end
    end


end
