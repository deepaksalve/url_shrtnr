class ShortUrlsController < ApplicationController
  def index
    @short_urls = ShortUrl.order(clicks: :desc)
      .paginate(page: params[:page], per_page: 10, total_entries: 100)
  end

  def create
    original_url = url_params[:original_url]

    return redirect_to root_url if original_url.empty?

    record = ShortUrl.generate(original_url)
    @shortened_url = record.shortened_url
    @original_url = record.original_url

    render :shortened, status: 201
  end

  def show
    record = ShortUrl.find_by_short_url(params[:short_url])

    if record
      record.increment!(:clicks)
      head :moved_permanently, :location => record.original_url
    else
      head :moved_permanently, :location => root_url
    end
  end

  private

    def url_params
      params.require(:short_url).permit(:original_url)
    end
end
