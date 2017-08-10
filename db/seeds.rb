# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

top_sites = [
  'google.com', 'youtube.com', 'facebook.com', 'baidu.com', 'wikipedia.org',
  'yahoo.com', 'reddit.com', 'google.co.in', 'qq.com', 'taobao.com', 'amazon.com',
  'tmall.com', 'twitter.com', 'google.co.jp', 'sohu.com', 'live.com', 'vk.com',
  'instagram.com', 'sina.com.cn', '360.cn', 'google.de', 'jd.com', 'google.co.uk',
  'linkedin.com', 'weibo.com', 'google.fr', 'google.ru', 'google.com.br',
  'yahoo.co.jp', 'yandex.ru', 'netflix.com', 't.co', 'google.com.hk', 'hao123.com',
  'imgur.com', 'google.it', 'ebay.com', 'google.es', 'detail.tmall.com',
  'wordpress.com', 'msn.com', 'aliexpress.com', 'bing.com', 'tumblr.com',
  'google.ca', 'livejasmin.com', 'microsoft.com', 'stackoverflow.com', 'twitch.tv',
  'soso.com', 'blogspot.com', 'amazon.co.jp', 'ok.ru', 'google.com.mx', 'apple.com',
  'Naver.com', 'mail.ru', 'imdb.com', 'popads.net', 'tianya.cn', 'office.com',
  'google.co.kr', 'github.com', 'pinterest.com', 'paypal.com', 'diply.com',
  'google.com.tw', 'google.com.tr', 'google.com.au', 'amazon.de', ' 	google.co.id',
  'microsoftonline.com', 'onclckds.com', 'amazon.co.uk', 'adobe.com', 'wikia.com',
  'cnzz.com', 'coccoc.com', 'fc2.com', 'pixnet.net', 'google.pl', 'dropbox.com',
  'googleusercontent.com', 'gmw.cn', 'whatsapp.com', 'google.com.eg',
  'google.co.th', 'google.com.sa', 'amazon.in', 'google.com.ar', 'bbc.co.uk',
  'craigslist.org', 'bbc.com', 'soundcloud.com', 'google.nl', 'booking.com'
]

top_sites.each do |site|
  record = ShortUrl.generate(site)
  record.update!(clicks:  (rand * 1000).to_i )
end
