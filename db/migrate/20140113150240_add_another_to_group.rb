class AddAnotherToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :location, :string
    add_column :groups, :gpname, :string
    add_column :groups, :level, :decimal
    add_column :groups, :mainloc, :string
    add_column :groups, :comment, :string
    add_column :groups, :nickname, :string
  end
end
