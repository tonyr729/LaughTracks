class AddImgToComedian < ActiveRecord::Migration[5.2]
  def change
    add_column :comedians, :img, :string
  end
end
