class Removewage < ActiveRecord::Migration[5.0]
  def change
     remove_column :jobs, :wage_lower_bound
     remove_column :jobs, :wage_upper_bound
  end
end
