require "rails_helper"

    RSpec.describe "When I visit the astronauts index page" do
      it "I see a list of astronauts with info" do

        astro1 = Astronaut.create!(name: "Neil Armstrong", age: 45, job: "Commander")
        astro2 = Astronaut.create!(name: "Other Guy", age: 48, job: "Capsule Pilot")
        astro3 = Astronaut.create!(name: "Buzz Aldrin", age: 51, job: "EVA Specialist")

        mission1 = Mission.create!(title: "Apollo 11", time_in_space: 22)
        mission2 = Mission.create!(title: "Apollo 13", time_in_space: 48)
        mission3 = Mission.create!(title: "Gemini 12", time_in_space: 8)
        mission4 = Mission.create!(title: "Interstellar", time_in_space: 889)

        astro1.missions << mission1
        astro1.missions << mission2
        astro1.missions << mission3

        astro2.missions << mission4
        astro2.missions << mission2
        astro2.missions << mission3

        astro3.missions << mission1


        visit "/astronauts"

        save_and_open_page
      end

    end







# As a visitor,
# When I visit '/astronauts'
# I see a list of the space missions' in alphabetical order for each astronaut.
#
# (e.g "Apollo 13"
#      "Capricorn 4"
#      "Gemini 7")
