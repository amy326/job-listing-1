class ChangeTimeLowerBound < ActiveRecord::Migration[5.0]
  def change
     change_column :jobs, :time_lower_bound, :date
  end
end
