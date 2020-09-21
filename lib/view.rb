class View
    def create
        puts "Author:"
        author = gets.chomp
  
        puts "Content"
        content = gets.chomp
        return params = { content: content, author: author}
    end
  
    def indew_gossips
        CSV.foreach("./db/gossip.csv") do |row|
            puts row 
        end
    end 
      
      
  end  