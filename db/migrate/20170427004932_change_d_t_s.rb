class ChangeDTS < ActiveRecord::Migration[5.0]
  def change
     change_column :jobs, :time_lower_bound, :string
     change_column :jobs, :time_upper_bound, :string
  end
end
