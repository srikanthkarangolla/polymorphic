class AddHaveCommentsToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :have_comments, :boolean,  default: false

  end
end
