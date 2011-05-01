class CreatePostAnswers < ActiveRecord::Migration
  def self.up
    create_table :post_answers do |t|
      t.string :content
      t.string :username
      t.integer :post_id

      t.timestamps
    end
  end

  def self.down
    drop_table :post_answers
  end
end
