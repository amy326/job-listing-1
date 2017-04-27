class ChangeTUB < ActiveRecord::Migration[5.0]
  def change
     change_column :jobs, :time_upper_bound, :datetime
  end
end
