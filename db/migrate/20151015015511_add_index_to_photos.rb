class AddIndexToPhotos < ActiveRecord::Migration
  def change
  	add_index :photos, :place_id
  end
end
