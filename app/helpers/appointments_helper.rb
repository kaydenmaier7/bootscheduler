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
end
