class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |t|
      t.string :name
      t.belongs_to :teacher
      t.belongs_to :student
      t.timestamps
    end
  end
end
