class AddContactedOnToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :contacted_on, :datetime
  end
end
