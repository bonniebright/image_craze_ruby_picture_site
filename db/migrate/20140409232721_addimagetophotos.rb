class Addimagetophotos < ActiveRecord::Migration
  def change
    add_attachment :photos, :image
    remove_attachment :photos, :image
  end
end
