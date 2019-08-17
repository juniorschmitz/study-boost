class AddUserReferenceToReferences < ActiveRecord::Migration[5.2]
  def change
    add_reference :references, :user, index: true
  end
end
