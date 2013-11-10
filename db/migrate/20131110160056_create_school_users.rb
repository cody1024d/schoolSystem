class CreateSchoolUsers < ActiveRecord::Migration
  def change
    create_table :school_users do |t|
      t.string :email
      t.string :type
      t.text :password_digest
      t.timestamps
    end
  end
end
