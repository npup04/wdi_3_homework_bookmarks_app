class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.string :comment
      t.boolean :favorite

      t.timestamps null: false
    end
  end
end
