
module ApplicationHelper
  def navigation
    if lookup_context.exists?("nav", params[:controller], true)
      {partial: 'nav'}
    else
      {partial: 'layouts/nav'}
    end
  end
end