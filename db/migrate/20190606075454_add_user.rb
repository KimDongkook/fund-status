class AddUser < ActiveRecord::Migration[5.2]
  def change
    for num in (1..40) do
      user = User.new
      user.name = "user#{num}"
      user.save
    end
  end

end
