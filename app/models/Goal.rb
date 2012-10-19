class Goal < ActiveRecord::Base

  def shirts_sold_as_percentage
    ((shirts_sold.to_f / total_shirt_goal.to_f) * 100).to_i
  end

  def days_left_in_campaign
    (campaign_end_date.to_date - Date.today).to_i
  end
end