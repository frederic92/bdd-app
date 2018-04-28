require 'rails_helper'

RSpec.describe User, type: :model do

  #associations
  it { is_expected.to have_many(:books).dependent(:delete_all) }
end
