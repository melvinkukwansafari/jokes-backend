class CreateJokes < ActiveRecord::Migration[6.1]
  def change
    create_table :jokes do |t|
      t.string :content
      t.integer :author_id

      t.timestamps
    end
  end
end
