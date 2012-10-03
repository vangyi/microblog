require 'spec_helper'

describe Entry do

  context " relationship" do
    it { should belong_to :user}
  end

end
