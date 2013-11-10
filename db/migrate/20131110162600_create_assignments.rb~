class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.string :description
      t.date :dueDate
      t.active :boolean
      t.belongs_to :class
      t.timestamps
    end
  end
end
