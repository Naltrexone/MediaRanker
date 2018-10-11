class VotesController < ApplicationController

    def upvote

      if session[:user_id]
        user = User.find(session[:user_id])
        work = Work.find(params[:id])
        new_vote = Vote.new(user: user, work: work)

        if new_vote.save
          flash[:success] = "Successfully upvoted!"
          redirect_back(fallback_location: root_path)
        else
          flash[:failure] = "Could not upvote"
          redirect_back(fallback_location: root_path)
        end

      else
        flash[:failure] = "You must log in to do that"
        redirect_back(fallback_location: root_path)
      end

    end

  end
end
