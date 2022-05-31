class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true
  validates :hourly_rate, numericaly: {only_integer: true}
  validates :hourly_rate, numericaly: {greater_than_or_equal_to: 40}
  validates :hourly_rate, numericaly: {lesser_than_or_equal_to: 200}
  validates :store_id, presence: true
end
