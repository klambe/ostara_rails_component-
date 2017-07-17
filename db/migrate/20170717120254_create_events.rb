class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :category
      t.string :sub_category1
      t.string :year
      t.string :month
      t.boolean :approval

      t.timestamps
    end
  end
end

# rails g model Media_File filename:string s3_location:string approval:boolean flagged:boolean Event:references

# rails g model Event title:string category:string sub_category1:string year:string month:string approval:boolean