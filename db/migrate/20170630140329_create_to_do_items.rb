class CreateToDoItems < ActiveRecord::Migration
  def change
    create_table :to_do_items do |t|
      t.date :due_date
      t.string :title
      t.text :description
      t.boolean :completed
      t.references :todo_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
