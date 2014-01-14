class Squeak < ActiveRecord::Base
  validates_presence_of :user, :body
  validates             :body, length: { minumum: 1, maximum: 140 }
end
