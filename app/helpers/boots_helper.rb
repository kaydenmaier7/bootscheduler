module BootsHelper

  def reformat_date(date)
    date = date.to_s
    date = date.split('-')
    new_date = "#{date[1]}/#{date[2]}/#{date[0]}"
    return new_date
  end

end
