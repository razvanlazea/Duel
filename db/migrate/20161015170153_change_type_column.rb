class ChangeTypeColumn < ActiveRecord::Migration
  def change
  	rename_column :cards, :type, :kind
  end
end
