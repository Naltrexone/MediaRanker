class VotesController < ApplicationController
  def show
    @vote = Vote.find_by(id: params[:id].to_i)
    if id == nil
      render :not_found, status: :not_found
    end
  end

  def index
    @votes = Vote.all
  end

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new(vote_params)
    if @vote.save
      redirect_to votes_path
    else
      render :new
    end
  end


  # def edit
  #   @vote = Vote.find_by(id: params[:id].to_i)
  # end
  #
  # def update
  #   @vote = Vote.find_by(id:params[:id])
  #   @vote.update(vote_params)
  #   if @vote.save
  #     redirect_to vote_path
  #   else
  #     render :new
  #   end
  # end

  def destroy
    vote = Vote.find_by(id: params[:id].to_i)
    Vote.destroy
    redirect_to votes_path
  end

private
  def vote_params
  return params.require(:vote).permit()
end


end

end
