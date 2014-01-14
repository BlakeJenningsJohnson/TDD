class CreateSqueaks < ActiveRecord::Migration
  def change
    create_table :squeaks do |t|
      t.string :user
      t.string :body

      t.timestamps
    end
  end
end
