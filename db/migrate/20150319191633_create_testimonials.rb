class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :client
      t.text :body
      t.timestamps
    end
  end
end
