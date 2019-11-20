class CreateAdresses < ActiveRecord::Migration[6.0]
  def change
    create_table :adresses do |t|
      t.string :state
      t.string :city
      t.string :zip
      t.belongs_to :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
