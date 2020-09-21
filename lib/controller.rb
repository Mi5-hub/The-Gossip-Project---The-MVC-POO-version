require 'view'
require 'gossip'

class Controller
    def initialize    
        @view = View.new
    end

    def index_gossips #demande au model une array qui contient toutes les potins que l'on a en base     
        @view.indew_gossips #demander à la view d'exéctuer la méthode index_gossips qui affichera tous les potins
    end

    def create_gossip 
        @params = @view.create
        author = @params[:author]
        content = @params[:content]  
        @gossip = Gossip.new(author,content) #instance de la classe Gossip
        @gossip.save #enregistre dans la  base
    end
 
end