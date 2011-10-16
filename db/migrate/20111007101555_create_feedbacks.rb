class CreateFeedbacks < ActiveRecord::Migration
  def self.up
    create_table :feedbacks do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :postcode
      t.integer :client_id

      t.timestamps
    end
  end

  def self.down
    drop_table :feedbacks
  end
end
