ActiveAdmin.register User do
  permit_params :email, :name, :amount, :company_name, :company_zip, :phone_number
end
