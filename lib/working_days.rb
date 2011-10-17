require "working_days/version"

module WorkingDays
  def plus_working_days(number_of_days = 0)
    res = self

    number_of_days.times do |i|
      res = res + 1.day

      while [0,6].include?(res.wday) #or h = Holiday.find(:first, :conditions => ["start_date <= ? AND end_date >= ?", res.strftime('%Y-%m-%d'), res.strftime('%Y-%m-%d')])
        res = res + 1.day
      end
    end

    res
  end
end

Time.send(:include, WorkingDays)