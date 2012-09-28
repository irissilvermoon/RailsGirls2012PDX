class CreateMfnws < ActiveRecord::Migration
  def change
    create_table :mfnws do |t|
      t.string :name
      t.string :genre
      t.string :picture

      t.timestamps
    end
  end
end
