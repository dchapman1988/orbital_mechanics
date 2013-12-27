require 'spec_helper'

describe OrbitalMechanics::Constants do
  it 'should define a gravitational constant' do
    subject.should define_constant(:G)
    subject.const_get(:G).should eq(6.67384e-11)
  end
end
