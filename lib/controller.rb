class Controller
    attr_accessor :view

    def initialize
        @view = View.new
    end

    def create_gossip
        params = @view.create_gossip
        gossip = Gossip.new(params[:author], params[:content])
        gossip.save
    end

    def index_gossips
        gossips = Gossip.all
        @view.index_gossips(gossips)
    end

    def destroy_gossip
        index_gossips
        line_to_del = @view.destroy_gossip
        Gossip.destroy_gossip(line_to_del)
    end

end
