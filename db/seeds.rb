=begin
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
=end

puts "Creating 5 Documents"
5.times do |d|
  CampDocument.create!(title: "Document #{d}",
                       description: "Mlkshk lomo cray bicycle rights craft beer, vexillologist iPhone shabby chic authentic keffiyeh.
                                     Keffiyeh cold-pressed swag four loko, semiotics fashion axe synth XOXO post-ironic gochujang craft beer flexitarian
                                     tbh lomo wayfarers.",
                       file_url: "https://hipsum.co/?paras=4&type=hipster-centric",
                       image_url: "https://s24.postimg.org/l6039dsxh/Sign-_Documents-_Online.jpg")
end

puts "Finished"
