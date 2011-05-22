class ChangeTypeContentInPostAnswers < ActiveRecord::Migration
  def self.up
  	change_column :post_answers, :content, :text
  end

  def self.down
  	change_column :post_answers, :content, :string
  end
end
