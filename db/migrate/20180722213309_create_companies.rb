class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :phone
      t.string :trade_name
      t.string :address
      t.string :suite
      t.string :city
      t.string :state
      t.string :zip
      t.string :tax_id
      t.string :entity_type
      t.string :annual_revenue
      t.string :sell_to
      t.string :financing_time
      t.string :amount
      t.string :website
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
