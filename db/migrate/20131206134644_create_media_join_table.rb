class CreateMediaJoinTable < ActiveRecord::Migration
  def change
    create_join_table :artists, :musics do |t|
      # t.index [:artist_id, :music_id]
      t.index [:music_id, :artist_id], unique: true
    end
  end
end
