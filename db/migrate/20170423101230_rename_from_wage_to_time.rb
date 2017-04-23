class RenameFromWageToTime < ActiveRecord::Migration[5.0]
  def change
     rename_column :jobs, :wage_upper_bound, :time_upper_bound
     rename_column :jobs, :wage_lower_bound, :time_lower_bound
  end
end
