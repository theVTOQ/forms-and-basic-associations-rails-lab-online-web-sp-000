class Song < ActiveRecord::Base
  # add associations here
  belongs_to :author
  belongs_to :genre
  has_many :notes

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def genre_name
    self.genre ? self.genre.name : nil
  end

  def notes_contents=(contents)
    contents.each do |content|
      note = Note.find_or_create_by(content: content)
      self.notes << note
    end
  end
end
