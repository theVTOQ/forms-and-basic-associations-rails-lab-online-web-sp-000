class Song < ActiveRecord::Base
  # add associations here
  belongs_to :author
  belongs_to :genre
  has_many :notes
end
