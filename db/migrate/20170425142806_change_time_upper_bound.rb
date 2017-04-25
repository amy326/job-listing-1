class ChangeTimeUpperBound < ActiveRecord::Migration[5.0]
  def change
     change_column :jobs, :time_upper_bound, :date
  end
end
