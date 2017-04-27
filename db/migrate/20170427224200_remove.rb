class Remove < ActiveRecord::Migration[5.0]
  def change
     remove_column :jobs, :time_upper_bound
     remove_column :jobs, :time_lower_bound
  end
end
