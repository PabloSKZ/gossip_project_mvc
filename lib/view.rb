class View

    def create_gossip
        puts "\n\n"
        puts "Quel est l'auteur de ce Gossip ?"
        print "> "
        author = gets.chomp
        puts "\n\n"
        puts "Le Gossip :"
        print "> "
        content = gets.chomp
        puts "\n\n"
        return params = {author: author, content: content}
    end

    def index_gossips(gossips)
        gossips.each {|i| puts i[0] + " > " + i[1] }
    end

    def destroy_gossip
        puts "Quel Gossip veux tu supprimmer ?"
        print "> "
        line_to_del = gets.chomp
        return line_to_del
    end

end