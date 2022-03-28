class AddAdminToUsers < ActiveRecord::Migration[6.1]
  def change
    
    add_column :users, :name , :string , null: false, default:""
    add_column :users, :surname, :string, null: false, default:""
    add_column :users, :age, :integer, null: false, default:""
    add_column :users, :username, :string, null: false, default:""
    add_column :users, :category, :string, null: false, default:"user"
  end
end
