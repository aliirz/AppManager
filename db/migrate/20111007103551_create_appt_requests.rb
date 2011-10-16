class CreateApptRequests < ActiveRecord::Migration
  def self.up
    create_table :appt_requests do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :postcode
      t.string :city
      t.datetime :requested_for
      t.integer :client_id

      t.timestamps
    end
  end

  def self.down
    drop_table :appt_requests
  end
end
