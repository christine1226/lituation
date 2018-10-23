class Event < ApplicationRecord
  belongs_to :user
  validates :event_name, presence: true
  validates :start_datetime, presence: true
  validates :end_datetime, presence: true
  validate :doesnt_end_before_it_starts

  def doesnt_end_before_it_starts
    if start_datetime > end_datetime
      errors.add(:start_datetime, "Event must Start before it Ends")
    end
  end

end
