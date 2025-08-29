class AddForeignKeysToBookmarks < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :bookmarks, :movies, if_not_exists: true
    add_foreign_key :bookmarks, :lists,  if_not_exists: true
  end
end
