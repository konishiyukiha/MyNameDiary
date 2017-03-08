class CreateArticels < ActiveRecord::Migration[5.0]
  def change
    create_table :articels do |t|
      t.string :title
      t.string :body
      t.string :author

      t.timestamps
    end
  end
end
