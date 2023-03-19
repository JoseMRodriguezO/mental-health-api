class CreateMoods < ActiveRecord::Migration[7.0]
  def change
    create_table :moods do |t|
      t.integer :user_id
      t.string :mood_type
      t.string :mood_intensity

      t.timestamps
    end
  end
end
