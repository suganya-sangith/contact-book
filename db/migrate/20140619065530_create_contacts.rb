class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :email_id
      t.string :mobile_number
      t.string :address

      t.timestamps
    end
  end
end
