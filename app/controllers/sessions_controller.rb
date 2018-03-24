class SessionsController < ApplicationController

  def new
    @candidate = Candidate.new
  end

  def create
    candidate = Candidate.find_by(email: params[:session][:email])
    session[:candidate_id] = candidate.id
    redirect_to candidate_url(candidate)
  end

  def destroy
  end
end
