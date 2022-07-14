class CreateArtikels < ActiveRecord::Migration[7.0]
  def change
    create_table :artikels do |t|
      t.string :titel
      t.string :text

      t.timestamps
    end
  end
end
