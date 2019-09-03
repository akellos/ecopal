class AddColorToChallenge < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :bg_color, :string
  end
end
