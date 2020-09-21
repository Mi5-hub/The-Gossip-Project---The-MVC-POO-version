class Gossip
    attr_reader :content, :author

    def initialize(author, content)
        @content = content
        @author = author
    end
     
    def save
        CSV.open("./db/gossip.csv", "a+") do |f|
        f << [@author,@content]
        end
    end

    def self.all
        all_gossip = []
        CSV.read("./db/gossip.csv").each do |line|
            all_gossip << Gossip.new(line[0],line[1])
        end

        return gossip_array
    end
      
    def self.find(id)
        return Gossip.all[id]
    end    
end