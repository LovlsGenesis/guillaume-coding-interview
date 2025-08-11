require 'rails_helper'

RSpec.describe "Tweets", type: :request do

  before do
    create_list(:tweet, 10, user: create(:user))
  end

  describe "#index" do
    let(:result) { JSON.parse(response.body) }

  context "Pagination" do
    it "should paginate all the tweets" do
        per_page = 3
        get tweets_path(per_page: per_page)

        expect(result.size).to eq(per_page)

      end
    end
  end
end
