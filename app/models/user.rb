class User < ApplicationRecord
    has_many :stories
    has_many :words, through :stories

end
