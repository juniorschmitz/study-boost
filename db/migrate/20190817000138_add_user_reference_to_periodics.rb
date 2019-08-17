class AddUserReferenceToPeriodics < ActiveRecord::Migration[5.2]
  def change
    add_reference :periodics, :user, index: true
  end
end
