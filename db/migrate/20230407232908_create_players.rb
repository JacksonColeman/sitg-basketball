class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :year
      t.integer :shooting
      t.integer :playmaking
      t.integer :rebounding
      t.integer :defense
      t.integer :physical
      t.integer :team_id

      t.timestamps
    end
  end
end
