
module ApplicationHelper
  def navigation
    if lookup_context.exists?("nav", params[:controller], true)
      {partial: 'nav'}
    else
      {partial: 'layouts/nav'}
    end
  end

  def markdown
      options = {autolink: true, no_intra_emphasis: true, fenced_code_blocks: true}
      markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options )
  end
end