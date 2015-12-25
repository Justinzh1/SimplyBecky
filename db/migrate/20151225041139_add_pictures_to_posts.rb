class AddPicturesToPosts < ActiveRecord::Migration
  def up
    add_attachment :posts, :cover
  end

  def down
    remove_attachment :posts, :cover
  end
end
