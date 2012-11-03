require 'twilio-ruby'

class GoalsController < ApplicationController
  before_filter :find_goal

  def edit
  end

  def update
    @goal.shirts_sold = params[:shirts_sold]
    @goal.dollars_raised = params[:dollars_raised]
    @goal.total_shirt_goal = params[:total_shirt_goal]
    @goal.campaign_end_date = Date.civil(params[:campain_date][:year].to_i, params[:campain_date][:month].to_i, params[:campain_date][:day].to_i)

    @goal.save!

    render 'goals/save'
  end

  def sms

    shirts_sold = params[:body].to_i
    dollars_raised = shirts_sold * 25

    @goal.shirts_sold = shirts_sold
    @goal.dollars_raised = dollars_raised
    @goal.save!

    twiml = Twilio::TwiML::Response.new do |r|
      r.Sms "updated goal: #{shirts_sold} shirts sold, $#{dollars_raised} raised."
    end

    render :xml => twiml.text
  end


  private
  def find_goal
    @goal = Goal.first || Goal.new
  end
end