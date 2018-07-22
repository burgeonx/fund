json.extract! company, :id, :name, :phone, :trade_name, :address, :suite, :city, :state, :zip, :tax_id, :entity_type, :annual_revenue, :sell_to, :financing_time, :amount, :website, :user_id, :created_at, :updated_at
json.url company_url(company, format: :json)
