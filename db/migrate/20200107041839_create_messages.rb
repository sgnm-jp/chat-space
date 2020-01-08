class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :message, null: true
      t.text :image, null: true
      t.references :user, foreign_key: true, null: false
      t.references :group, foreign_key: true, null: false
      t.timestamps
    end
  end
end
