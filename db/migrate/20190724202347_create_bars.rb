class CreateBars < ActiveRecord::Migration[6.0]
  def change
    create_table :bars do |t|
      t.belongs_to :foo
    end
  end
end
