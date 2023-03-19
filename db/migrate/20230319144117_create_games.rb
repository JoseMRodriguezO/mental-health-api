class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.string :game_url

      t.timestamps
    end
  end
end
