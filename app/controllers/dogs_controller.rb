class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    @dogs = @dogs.sort_by {|dog| dog.employees.length}.reverse
    # byebug
  end
  
  def show 
    @dog=Dog.find(params[:id])
  end
end
