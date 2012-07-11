class AddForeignKeyToComments < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.references :users
    end
  end
end
