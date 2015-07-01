class Subject < ActiveRecord::Base
  has_and_belongs_to_many :qualifications

  default_scope { order('title ASC') }

  validates :uuid, :presence => true, :uniqueness => true
end
