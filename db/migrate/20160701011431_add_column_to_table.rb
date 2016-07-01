class AddColumnToTable < ActiveRecord::Migration
  def change
    add_column :leads, :message, :text
  end
end
