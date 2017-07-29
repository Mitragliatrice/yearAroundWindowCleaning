class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.string :name
      t.bigint :phone
      t.string :city
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
