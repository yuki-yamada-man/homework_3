class CreateEats < ActiveRecord::Migration[5.2]
  def change
    create_table :eats do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
