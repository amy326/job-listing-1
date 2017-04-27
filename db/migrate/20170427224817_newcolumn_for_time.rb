class NewcolumnForTime < ActiveRecord::Migration[5.0]
  def change
     add_column :jobs, :time_upper_bound, :datetime
     add_column :jobs, :time_lower_bound, :datetime
  end
end
