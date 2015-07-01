class Qualification < ActiveRecord::Base
  has_and_belongs_to_many :subjects

  default_scope { order('name ASC') }

  validates :uuid, :presence => true, :uniqueness => true
end
