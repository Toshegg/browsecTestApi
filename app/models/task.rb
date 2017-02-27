class Task < ActiveRecord::Base
  validates_presence_of :title

  scope :filtered_by, -> (params) {
    res = all

    res
  }

  scope :ordered_by, -> (params) {
    order("weight ASC")
  }

end
