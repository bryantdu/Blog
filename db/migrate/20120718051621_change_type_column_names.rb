class ChangeTypeColumnNames < ActiveRecord::Migration
  def up
  	change_table :types do |t|
  		t.rename :type, :item_type
  	end
  end

  def down
  	change_table :types do |t|
  		t.rename :intem_type , :type
  	end
  end
end
