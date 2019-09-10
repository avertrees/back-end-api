class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :name
      t.float :longitude
      t.float :latitude
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
