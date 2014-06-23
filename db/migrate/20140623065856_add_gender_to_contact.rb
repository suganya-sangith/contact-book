class AddGenderToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :gender, :string
  end
end
