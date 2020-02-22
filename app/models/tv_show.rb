class TvShow < ApplicationRecord
	belongs_to :channel

	def start_time
    time_strf(read_attribute(:start_time)) if read_attribute(:start_time).present?
  end

  def start_time=(value)
    write_attribute(:start_time, Time.parse(value).seconds_since_midnight) if value.present?
  end

  def end_time
    time_strf(read_attribute(:end_time)) if read_attribute(:end_time).present?
  end

  def end_time=(value)
    write_attribute(:end_time, Time.parse(value).seconds_since_midnight) if value.present?
  end

  def time_strf(time_digit)
    (Time.now.at_midnight + time_digit).strftime("%H:%M")
  end

  def self.required_data(query)
    TvShow.joins(:channel).select('tv_shows.*, channels.name as channel_name').where("channels.name LIKE '%#{query}%' OR tv_shows.name LIKE '%#{query}%'")
  end
end
