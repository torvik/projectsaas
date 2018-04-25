class HomeController < ApplicationController
  skip_before_action :authenticate_tenant!, :only => [ :index ]

  def index
    if current_user
      if session[:tenant_id]
        Tenant.set_current_tenant session[:tenant_id]
      else 
        Tenant.set_current_tenant current_user.tenants.first 
      end

      @tenant = Tenant.current_tenant 
      @projetcs = Project.by_plan_add_tenant(@tenant.id)
      
      params[:tenant_id] = @tenant.id
    end 
  end
end
