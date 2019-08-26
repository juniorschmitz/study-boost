module ReferencesHelper
  def date_to_bd(date)
    date.strftime("%Y-%m-%d")
  end

  def date_to_view(date)
    date.strftime("%d/%m/%Y")
  end
end
