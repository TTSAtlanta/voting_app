class MainController < ApplicationController
  before_filter :authenticate_user!

  def vote
  	@candidates = Candidate.all
  end

  def scores
  	@users = User.all
    @candidates = Candidate.all

    @choices = {}
    @total = 0.0

    @candidates.each do |candidate|
        @choices[candidate.name] = 0
    end
    
    @users.each do |user|
      @choices.each do |candidate, count|
        if candidate == user.candidate.name
          @choices[candidate] += 1
          @total += 1
        end 
      end
    end
  end

  def process_vote
  	voter = User.find(current_user.id)
  	voter.candidate_id = params[:id]
  	voter.save

    redirect_to vote_path
  end 

  def view_votes
    @users = User.all
  end  

end
