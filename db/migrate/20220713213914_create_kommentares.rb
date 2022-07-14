class CreateKommentares < ActiveRecord::Migration[7.0]
  def change
    create_table :kommentares do |t|
      t.references :posts, null: false, foreign_key: true
      t.datetime :zeit
      t.string :text

      t.timestamps
    end
  end
end
