ActiveAdmin.register Company do
  permit_params :name, :phone, :trade_name, :address, :suite, :city, :state, :zip, :tax_id, :entity_type, :annual_revenue, :sell_to, :financing_time, :amount, :website, :active
  
  action_item :contact, only: :show do
    link_to "Contacted", contact_admin_company_path(company), method: :put if !company.contacted_on?
  end
  
  member_action :contact, method: :put do
    company = Company.find(params[:id])
    company.update(contacted_on: Time.zone.now)
    redirect_to admin_company_path(company)
  end
end
