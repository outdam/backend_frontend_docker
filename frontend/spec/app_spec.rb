require "./src/app.rb"

RSpec.describe App do
  describe "visit /" do
    it "is a valid route" do
      get "/"

      expect(last_response).to be_ok
    end
  end
end
