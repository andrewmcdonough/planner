require 'spec_helper'

feature 'member portal' do
  subject { page }
  before do
    visit root_path
    should_not have_content("Portal")

    login(member)
    visit root_path
  end

  context "coach" do
    let(:member) { Fabricate(:coach) }

    scenario 'a coach can access the member portal' do
      click_on "Portal"

      should have_content("Coach")
    end
  end

  context "student" do
    let(:member) { Fabricate(:student) }

    scenario 'can access the member portal' do
      click_on "Portal"

      should have_content("Student")
    end
  end
end
