class Employee < ActiveRecord::Base
  belongs_to(:division)
  belongs_to :project
  # has_and_belongs_to_many(:project)

end
