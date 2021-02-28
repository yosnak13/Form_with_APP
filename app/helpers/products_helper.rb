module ProductsHelper
  def add_comma(price)
    "¥#{price.to_s(:delimited)}"
  end
end
