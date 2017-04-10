class CreateCampDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :camp_documents do |t|
      t.string :title
      t.text :description
      t.text :file_url
      t.text :image_url

      t.timestamps
    end
  end
end
