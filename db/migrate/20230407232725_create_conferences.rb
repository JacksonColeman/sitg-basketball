class CreateConferences < ActiveRecord::Migration[7.0]
  def change
    create_table :conferences do |t|
      t.string :name
      t.string :short_name
      t.integer :reputation

      t.timestamps
    end
  end
end
