class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
    def full_name
      self.first_name + ' ' + self.last_name
  end
  def list_roles
      self.characters.map{|list| "#{list.name} - #{list.show.name}"}
  end 
end