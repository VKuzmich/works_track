class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.datetime :date
      t.string :track
      t.string :condition
      t.string :length

      t.timestamps
    end
  end
end
