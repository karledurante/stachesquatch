module ApplicationHelper

  def branding_enabled?
    params[:branding] == 'true'
  end
end
