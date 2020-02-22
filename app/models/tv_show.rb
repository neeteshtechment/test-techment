class TvShow < ApplicationRecord
	def timing
    time_strf(read_attribute(:timing)) if read_attribute(:timing).present?
  end

  def timing=(value)
    write_attribute(:timing, Time.parse(value).seconds_since_midnight) if value.present?
  end

  def time_strf(time_digit)
    (Time.now.at_midnight + time_digit).strftime("%H:%M")
  end
end
