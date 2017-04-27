class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.text :video_link

      t.timestamps
    end
  end
end
