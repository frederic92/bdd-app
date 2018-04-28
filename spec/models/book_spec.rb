require 'rails_helper'

RSpec.describe Book, type: :model do

  #associations
  it { is_expected.to belong_to(:user) }
end
