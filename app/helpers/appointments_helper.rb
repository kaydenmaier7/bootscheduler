module AppointmentsHelper
  def readable_time(time)
    @time = time
    @hour = @time.hour
    @min = @time.min

    if @min < 10
      @min = "0" + @min.to_s
    end

    if @hour > 12
      @hour = @hour - 12
      @hour = @hour.to_s
      @min = @min.to_s
      @human_readable = "#{@hour}:#{@min} PM"
    else
      @hour = @hour.to_s
      @min = @min.to_s
      @human_readable = "#{@hour}:#{@min} AM"
    end
  end

  def reformat_date(date)
    date = date.to_s
    date = date.split('-')
    new_date = "#{date[1]}/#{date[2]}/#{date[0]}"
    return new_date
  end
end
