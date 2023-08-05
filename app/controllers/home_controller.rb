class HomeController < ApplicationController
  def homepage
    @list_of_boards = Board.all
    render({:template => "home_templates/home"})
  end

  def new_board
    b = Board.new
    b.name = params.fetch("add_board")
    b.save
    redirect_to("/boards")
  end

  
end 
