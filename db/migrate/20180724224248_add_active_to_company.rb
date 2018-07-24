class AddActiveToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :active, :boolean
  end
end
