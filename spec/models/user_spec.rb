require 'spec_helper'

describe User do
  context 'validations' do
    it {should validate_presence_of(:username)}
    it {should validate_presence_of(:email)}
  end

  context 'relationships' do
    it (should haave many:entries)
  end
  #pending "add some examples to (or delete) #{__FILE__}"

end
