class Task < ActiveRecord::Base
  belongs_to :task_list

  validates :description, presence: true
  validates :due_date, :presence => true,
            unless: Proc.new {|a| a.due_date < Time.now}

  def self.format_date(date_hash)
    Date.new(date_hash[:year].to_i,date_hash[:month].to_i,date_hash[:day].to_i)

  end
end
