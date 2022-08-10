require 'rails_helper'
  #Test suite for the Item model 
  RSpec.describe Item, type: :model do 
    #Association test 
    #ensure an item record belongs to a single todo record 
    it { should belong_to(:todo) }
    #Validation test 
    #ensure column name is present beofore saving 
    it { should validate_presence_of(:name) }
end
