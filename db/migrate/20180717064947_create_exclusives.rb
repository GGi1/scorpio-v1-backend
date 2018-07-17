class CreateExclusives < ActiveRecord::Migration[5.2]
  def change
    create_table :exclusives do |t|

      t.timestamps
    end
  end
end
