class Addcolumntobooks < ActiveRecord::Migration
  def up
    :add_column => books, :link => :string
  end

  def down
  end
end
