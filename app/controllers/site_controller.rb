class SiteController < ApplicationController
  helper_method :resource_name, :resource, :devise_mapping

  def index
  end

  def resource_name
    :user
  end
  
  def resource
    @resource ||= User.new
  end
  
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def after_sign_in_path_for(resource)
      projects_path    
  end
end
