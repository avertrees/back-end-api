class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :pin, foreign_key: true
      t.string :content
      t.string :username

      t.timestamps
    end
  end
end
