class ShortUrl < ApplicationRecord
  validates_presence_of :original_url, :short_url

  SLUG_LENGTH = ENV['SLUG_LENGTH'].to_i

  def self.generate(original_url)
    row = ShortUrl.find_by_original_url(original_url)
    return row if row

    begin
      short_url = self.generate_random_string(SLUG_LENGTH)
    end while ShortUrl.find_by_short_url short_url

    record = ShortUrl.create(original_url: original_url, short_url: short_url)

    return record
  end

  def self.generate_random_string(size = 6)
    charset = ['0'..'9','A'..'Z', 'a'..'z'].map { |el| el.to_a }.flatten
    (0...size).map{ charset[rand(charset.size)] }.join
  end
end
