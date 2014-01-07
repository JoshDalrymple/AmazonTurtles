class Turtle < ActiveRecord::Base
self.inheritance_column = nil
validates :type, presence: true, uniqueness: { case_sensitive: false }
validates :speed, presence: true
validates :location, presence: true
validates :diet, presence: true
end
