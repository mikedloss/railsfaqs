class CreateForumThreads < ActiveRecord::Migration[5.2]
  def change
    create_table :forum_threads do |t|
      t.string :title
      t.references :forum, foreign_key: true

      t.timestamps
    end
  end
end
