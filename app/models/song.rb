class Song < ActiveRecord::Base
  # add associations here
  belongs_to :author
  belongs_to :genre
  has_many :notes

  def artist_name
    self.artist ? self.artist.name : nil
  end
end
