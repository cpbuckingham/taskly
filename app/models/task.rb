class Task < ActiveRecord::Base
  belongs_to :task_list

  validates :description, presence: true
  validates :due_date, :presence => true,
            unless: Proc.new {|a| a.due_date < Time.now}

  def days_left
    due_date.mjd - Date.today.mjd
  end

end
