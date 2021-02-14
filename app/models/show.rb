require 'pry'
class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters
    has_many :days
    def actors_list
        self.actors.map do |actor|
            actor.full_name
        end
    end
end