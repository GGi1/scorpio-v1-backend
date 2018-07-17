class CreateExclusiveVinyls < ActiveRecord::Migration[5.2]
  def change
    create_table :exclusive_vinyls do |t|

      t.timestamps
    end
  end
end
