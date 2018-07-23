class AddVerifiedPhoneToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :verified_phone, :boolean
  end
end
