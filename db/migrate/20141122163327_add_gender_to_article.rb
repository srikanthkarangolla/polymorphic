class AddGenderToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :gender, :boolean

  end
end
