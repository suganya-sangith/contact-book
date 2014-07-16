class RemoveEmailIdFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :email_id, :string
  end
end
