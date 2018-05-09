class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :sn
      t.string :model
      t.string :detail

      t.timestamps
    end
  end
end
