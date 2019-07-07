require "rails_helper"

    RSpec.describe "When I visit the astronauts index page" do
      it "I see a list of astronauts with info" do

        astro1 = Astronaut.create!(name: "Neil Armstrong", age: 45, job: "Commander")
        astro2 = Astronaut.create!(name: "Other Guy", age: 48, job: "Capsule Pilot")
        astro3 = Astronaut.create!(name: "Buzz Aldrin", age: 51, job: "EVA Specialist")


        visit "/astronauts"

        expect(Astronaut.average_age).to eq(48)

        expect(page).to have_content("Average Age: 48")

      end


    end



# As a visitor,
# When I visit '/astronauts'
# I see the average age of all astronauts.
#
# (e.g. "Average Age: 34")
