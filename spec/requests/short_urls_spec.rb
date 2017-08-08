
RSpec.describe ShortUrlsController, type: :request do
  let!(:short_url) { attributes_for :short_url }

  describe 'GET /short_urls' do
    before { get '/short_urls' }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /:short_url' do
    before { get "/#{short_url[:short_url]}" }

    it 'redirects to the #original_url' do
      expect(subject).to redirect_to(short_url[:original_url])
    end

    it 'returns status code 301' do
      expect(response).to have_http_status(301)
    end
  end

  describe 'POST /short_urls' do
    before { post '/short_urls', params: { short_url: short_url } }

    it 'creates a short url' do
      expect(response.body)
        .to match(/Please find the shortened URL:/)
    end

    it 'returns status code 201' do
      expect(response).to have_http_status(201)
    end
  end
end
