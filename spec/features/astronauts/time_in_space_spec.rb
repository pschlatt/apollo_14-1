require "rails_helper"

    RSpec.describe "When I visit the astronauts index page" do
      it "I see the total time an astronaut was in space" do

        astro1 = Astronaut.create!(name: "Neil Armstrong", age: 45, job: "Commander")
        astro2 = Astronaut.create!(name: "Other Guy", age: 48, job: "Capsule Pilot")
        astro3 = Astronaut.create!(name: "Buzz Aldrin", age: 51, job: "EVA Specialist")

        mission1 = Mission.create!(title: "Apollo 11", time_in_space: 22)
        mission2 = Mission.create!(title: "Apollo 13", time_in_space: 48)
        mission3 = Mission.create!(title: "Gemini 12", time_in_space: 8)
        mission4 = Mission.create!(title: "Interstellar", time_in_space: 889)




      end

    end




# As a visitor,
# When I visit '/astronauts'
# I see the total time in space for each astronaut.
# (e.g. "Name: Neil Armstrong, Age: 37, Job: Commander, Total Time in Space: 760 days")
