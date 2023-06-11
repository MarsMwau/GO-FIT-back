class AddImageToBodyParts < ActiveRecord::Migration[6.1]
  def change
    add_column :body_parts, :image, :string
  end
end
