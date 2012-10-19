class AddGoalsTable < ActiveRecord::Migration
  def up
    create_table :goals do |t|
      t.column "shirts_sold", :integer
      t.column "dollars_raised", :integer
      t.column "total_shirt_goal", :integer
      t.column "campaign_end_date", :datetime
    end
  end

  def down
    drop_table :goals
  end
end
