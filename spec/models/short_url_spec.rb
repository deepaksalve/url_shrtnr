RSpec.describe ShortUrl, type: :model do
  let!(:short_url) { attributes_for :short_url }
  let!(:invalid_short_url) { attributes_for :invalid_short_url }
  let!(:invalid_original_url) { attributes_for :invalid_original_url }

  it "is valid with valid attributes" do
    expect(ShortUrl.new(short_url)).to be_valid
  end

  it "is invalid with empty #short_url" do
    expect(ShortUrl.new(invalid_short_url)).to_not be_valid
  end

  it "is invalid with empty #original_url" do
    expect(ShortUrl.new(invalid_original_url)).to_not be_valid
  end
end
