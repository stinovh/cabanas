class AddUserToProperties < ActiveRecord::Migration
  def change
    add_reference :properties, :user, index: true
  end
end
