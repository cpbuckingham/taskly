class Task < ActiveRecord::Base
  has_many :task_lists_id, dependent: :destroy

  def self.format_date(date_hash)
    Date.new(date_hash[:year].to_i,date_hash[:month].to_i,date_hash[:day].to_i)

  end
end
