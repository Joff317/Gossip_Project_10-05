class GossipsController < ApplicationController
   ANONYMOUS_USER = 1.freeze

   def index 
   @gossips = Gossip.all.reorder(id: :asc, title: :asc, content: :asc)

   puts "$" * 60
   puts "Voici le nombre de potins dans la base : #{@gossips.length}"
   puts "$" * 60
   end

   def show 
      @link = Gossip.get_gossip_id(params[:id])
    end
   
  def new
   @new_gossip = Gossip.new 
  end

  def create 
   @gossip = Gossip.new("title" => params[:title],
                        "content" => params[:content],
                        "user" => User.find(ANONYMOUS_USER))
                        

   if @gossip.save 
      flash[:success] = "Le potin à bien été crée" #Specifying a message when it succeeds
      redirect_to gossips_path
   else
      render 'new'
   end
  end


end