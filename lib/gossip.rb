class Gossip
    attr_accessor :author, :content

    def initialize(author, content)
        @author = author
        @content = content
    end

    def save
        CSV.open("db/gossip.csv", "a") do |csv|
            csv << [@author, @content]
          end
    end

    def self.destroy_gossip(line_to_del)
        File.open('db/gossip2.csv', 'w') do |out_file|
            File.foreach('db/gossip.csv').with_index do |line,line_number|
               out_file.puts line if line_number == line_to_del # <== line numbers start at 0
            end
        end
    end

    def self.all
        all_gossips = CSV.parse(File.read("db/gossip.csv"))
        return all_gossips
    end

end