#Capybara.default_driver = :selenium
Capybara.default_driver = :poltergeist

Capybara.app_host = "http://localhost:3000"

describe "Course App" do

  describe "visit root" do
    before { visit '/' }

    it "displays 'Afrikaans' (default)" do
      expect(page).to have_content 'Afrikaans'
    end

    it "displays table element that has a row with 2 columns" do
      expect(page).to have_selector(:xpath, "//table//tr[count(td)=2]")
    end
  end
  describe "visit recipes " do
    before { visit '/recipes/search' }
    it "displays 'Bacon Wrapped Jalapeno Popper Stuffed Chicken when text=chicken" do
      expect(page).to have_content 'Bacon Wrapped Jalapeno Popper Stuffed Chicken'
    end
    it "displays table element that has a row with 3 columns" do
      expect(page).to have_selector(:xpath, "//table//tr[count(td)=3]")
    end
    it "column 1 should have the thumbnail inside img tag" do
      expect(page).to have_selector(:xpath, "//table//tr/td[1]//img")
    end
  end

  describe 'visit recipes with search' do
    before { visit '/recipes/search?text=chocolate' }
    it "displays 'Cookie Monster cupcakes when text=chocolate" do
      expect(page).to have_content 'Cookie Monster cupcakes'
    end
  end

end
