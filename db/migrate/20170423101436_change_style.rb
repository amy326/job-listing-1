class ChangeStyle < ActiveRecord::Migration[5.0]
  def change
     change_column :time_upper_bound, :integer, :date
     change_column :time_lower_bound, :integer, :date
 end
end
