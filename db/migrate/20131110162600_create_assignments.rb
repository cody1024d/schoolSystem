class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.string :description
      t.date :dueDate
      t.boolean :active
      t.belongs_to :class
      t.timestamps
    end
  end
end
