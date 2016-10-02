class AddUserRefToPrototypes < ActiveRecord::Migration
  def change
    add_reference :prototypes, :user
  end
end
