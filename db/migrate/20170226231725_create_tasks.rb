class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks, id: :uuid do |t|
      t.text :title, null: false
      t.integer :weight
      t.boolean :completed, default: false

      t.timestamps null: false
    end

  end
end
