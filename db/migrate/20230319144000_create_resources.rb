class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :description
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end
