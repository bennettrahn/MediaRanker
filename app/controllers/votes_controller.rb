class VotesController < ApplicationController
  def create
    @vote = Vote.new(user_id: session[:logged_in_user], work_id: params[:work_id])

    @vote.save

    redirect_back(fallback_location: root_path)
  end
end
