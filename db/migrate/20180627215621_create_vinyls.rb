class CreateVinyls < ActiveRecord::Migration[5.2]
  def change
    create_table :vinyls do |t|
      t.string :artist
      t.string :title
      t.decimal :price
      t.string :label
      t.string :labelnum
      t.string :pic

      t.timestamps
    end
  end
end
