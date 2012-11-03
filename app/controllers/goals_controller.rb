require 'twilio-ruby'

class GoalsController < ApplicationController
  def edit
    @goal = Goal.first || Goal.new
  end

  def update
    goal = Goal.first || Goal.new

    goal.shirts_sold = params[:shirts_sold]
    goal.dollars_raised = params[:dollars_raised]
    goal.total_shirt_goal = params[:total_shirt_goal]

    goal.campaign_end_date = Date.civil(params[:campain_date][:year].to_i, params[:campain_date][:month].to_i, params[:campain_date][:day].to_i)

    goal.save

    render 'goals/save'
  end

  def sms

    twiml = Twilio::TwiML::Response.new do |r|
      r.Sms "params: #{params.to_s}"
    end
    render :xml => twiml.text
  end

end