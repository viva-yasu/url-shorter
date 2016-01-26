require 'spec_helper'

describe UrlShorter do
  it 'has a version number' do
    expect(UrlShorter::VERSION).not_to be nil
  end

  it 'generate short URL' do
    url_shorter = UrlShorter::UrlShorter.new('AIzaSyDk8JonB2nEr8nf4C0W4ztDlJDmlDQ-z0U', 'https://github.com/viva-yasu/url-shrinker/')
    expect(url_shorter.short_url).to eq('https://goo.gl/o43GnB')
  end
end
