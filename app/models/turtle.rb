class Turtle < ActiveRecord::Base
has_many :user_turtles
has_many :users, through: :user_turtles
self.inheritance_column = nil
validates :type, presence: true, uniqueness: { case_sensitive: false }
validates :speed, presence: true
validates :location, presence: true
validates :diet, presence: true
end
