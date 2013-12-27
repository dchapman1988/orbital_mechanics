module OrbitalMechanics
  module Circular
    include OrbitalMechanics::Constants
    extend self

    # All bounded orbits where the gravity of a central body 
    # dominates are elliptical in nature. A special case of 
    # this is the circular orbit, which is an ellipse of zero eccentricity.
    #
    # @note To properly use this formula, the units must be consistent; 
    #   for example, `mass` must be in kilograms, and `radius` must be in meters.
    #   The answer will be in meters per second.
    # @param radius [Float, Fixnum] the distance from the mass's center of gravity
    # @param mass [Float, Fixnum] the mass of the object that we're orbiting around
    def orbital_velocity(radius, mass)
      Math.sqrt((mass * G) / radius)
    end

    # (see #orbital_velocity)
    # @note Once the circular orbital velocity is known, the 
    #   escape velocity is easily found by multiplying by the square root of 2
    def escape_velocity(radius, mass)
      Math.sqrt(2) * orbital_velocity(radius, mass)
    end
  end
end
