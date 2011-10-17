class AddContentToFeedbacks < ActiveRecord::Migration
  def self.up
    add_column :feedbacks, :content, :string
  end

  def self.down
    remove_column :feedbacks, :content
  end
end
