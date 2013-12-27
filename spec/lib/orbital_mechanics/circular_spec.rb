require 'spec_helper'

describe OrbitalMechanics::Circular do
  it 'should be a thing' do
    subject.should be_kind_of Module
  end

  it 'should be able to calculate orbital velocities' do
    distance_to_moon = 385000000
    mass_of_earth = 5.972e24
    subject.orbital_velocity(distance_to_moon, mass_of_earth).should eq(1017.4602003129062)
  end

  it 'should be able to calculate escape velocities' do
    distance_to_moon = 385000000
    mass_of_earth = 5.972e24
    sqrt_of_2 = Math.sqrt(2)
    orbital_velocity = subject.orbital_velocity(distance_to_moon, mass_of_earth)
    subject.escape_velocity(distance_to_moon, mass_of_earth).should eq(orbital_velocity * sqrt_of_2)
  end
end
