module ApplicationHelper

  def card(data, text, pos = "")
      content_tag :div, class: "large-3 columns #{pos}" do
        content_tag :div, class: "panel radius card" do
          content_tag(:h2, data) +
          content_tag(:p, text)
        end
      end
    end
end
