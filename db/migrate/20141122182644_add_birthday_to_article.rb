class AddBirthdayToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :birthday, :datetime

  end
end
