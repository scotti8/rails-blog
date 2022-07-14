class CreateCommentars < ActiveRecord::Migration[7.0]
  def change
    create_table :commentars do |t|
      t.references :artikel, null: false, foreign_key: true
      t.datetime :zeit
      t.string :text

      t.timestamps
    end
  end
end
