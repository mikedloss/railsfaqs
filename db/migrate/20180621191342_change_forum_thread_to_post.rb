class ChangeForumThreadToPost < ActiveRecord::Migration[5.2]
  def change
    rename_table :forum_threads, :posts
  end
end
