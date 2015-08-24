class Employee < ActiveRecord::Base
  belongs_to(:division)

  # scope(:not_done, -> do
  #   where({:done => false})
  # end)

end
