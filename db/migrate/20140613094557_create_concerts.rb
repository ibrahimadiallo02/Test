class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.datetime :date
      t.string :title
      t.text :place

      t.timestamps
    end
  end
end
