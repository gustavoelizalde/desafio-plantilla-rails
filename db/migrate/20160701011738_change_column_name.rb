class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :leads, :name, :subject
  end
end
