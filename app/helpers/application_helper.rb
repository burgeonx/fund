module ApplicationHelper
  def flash_class(key)
    case key
    when "notice" then "alert alert-info"
    when "alert" then "alert alert-danger"
    end
  end
      
  def resource_name
    :user
  end

  def resource_class 
     User 
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
