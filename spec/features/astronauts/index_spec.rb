require "rails_helper"

    RSpec.describe "When I visit the astronauts index page" do
      it "I see a list of astronauts with info" do

        astro1 = Astronaut.create!(name: "Neil Armstrong", age: 45, job: "Commander")
        astro2 = Astronaut.create!(name: "Other Guy", age: 48, job: "Capsule Pilot")
        astro3 = Astronaut.create!(name: "Buzz Aldrin", age: 51, job: "EVA Specialist")

        visit "/astronauts"

        expect(page).to have_content(astro1.name)
        expect(page).to have_content(astro2.name)
        expect(page).to have_content(astro3.name)

        expect(page).to have_content(astro1.age)
        expect(page).to have_content(astro2.age)
        expect(page).to have_content(astro3.age)

        expect(page).to have_content(astro1.job)
        expect(page).to have_content(astro2.job)
        expect(page).to have_content(astro3.job)

      end




    end





# User Story 1 of 4
#
# As a visitor,
# When I visit '/astronauts'
# I see a list of astronauts with the following info:
# - Name
# - Age
# - Job
#
# (e.g. "Name: Neil Armstrong, Age: 37, Job: Commander")
