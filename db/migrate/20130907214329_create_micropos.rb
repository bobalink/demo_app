class CreateMicropos < ActiveRecord::Migration
  def change
    create_table :micropos do |t|
      t.sting :content
      t.integer :user_id

      t.timestamps
    end
  end
end
