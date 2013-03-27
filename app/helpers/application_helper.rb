module ApplicationHelper
  def render_category(category)
    content_tag(:li, link_to(category.name, {controller: 'products', action: 'index', category: category.id }),
                :class => current_page?(category: category)? 'active' : nil)
  end
end
