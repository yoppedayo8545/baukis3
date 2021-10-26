module ApplicationHelper
  include HtmlBuilder

  def document_title
    if @title.present?
      "#{@title} - Baukis3"
    else
      "Baukis3"
    end
  end
end