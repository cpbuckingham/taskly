class TaskList < ActiveRecord::Base
  validates_presence_of :name, {message: "Your tasks list could not be created"}
  belongs_to :task
  has_many :tasks
end