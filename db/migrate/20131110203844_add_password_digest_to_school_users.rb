class AddPasswordDigestToSchoolUsers < ActiveRecord::Migration
  def change
    add_column :school_users, :password_digest, :string
  end
end
