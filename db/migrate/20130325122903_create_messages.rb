class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :contact
      t.text :body

      t.timestamps
    end
  end
end
