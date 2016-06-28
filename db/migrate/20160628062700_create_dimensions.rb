class CreateDimensions < ActiveRecord::Migration
  def change
    create_table :dimensions do |t|
      t.integer :length

      t.timestamps null: false
    end
  end
end
