class AddPlanIdToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :planid, :string
  end
end
