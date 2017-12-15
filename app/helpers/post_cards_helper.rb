require 'nokogiri'

module PostCardsHelper
  def body_replaced(post_card)
    body = post_card.body
    # noko_bod = Nokogiri::HTML(body)
    # case cookies['leontiste_type']
    # when 'male'
    #   noko_bod.search('.female').remove
    #   noko_bod.search('.group').remove
    # when 'female'
    #   noko_bod.search('.male').remove
    #   noko_bod.search('.group').remove
    # else
    #   noko_bod.search('.male').remove
    #   noko_bod.search('.female').remove
    # end
    # noko_bod.to_html.gsub!('$name', cookies['leontiste_name']).html_safe

    body.html_safe
  end
end
