class AddPhotoToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :photo, :string
  end
end
