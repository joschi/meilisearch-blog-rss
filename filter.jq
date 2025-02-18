.pageProps.blogPosts | {
  "version": "https://jsonfeed.org/version/1.1",
  "title": "Meilisearch latest news and company updates",
  "home_page_url": "https://www.meilisearch.com/blog",
  "feed_url": "https://joschi.github.io/meilisearch-blog-rss/feed.json",
  "favicon": "https://www.meilisearch.com/favicon.ico",
  "icon": "https://www.meilisearch.com/apple-touch-icon.png",
  items: [
    .data[] | {
      "id": .id,
      "title": .attributes.title,
      "summary": .attributes.excerpt,
      "content_text": .attributes.content,
      "image": .attributes.featureImage.data.attributes.url,
      "date_published": .attributes.publishedAt,
      "authors": [{
        "name": (.attributes.author.data.attributes.firstName + " " + .attributes.author.data.attributes.lastName),
        "url": ("https://www.meilisearch.com/author/" + .attributes.author.data.attributes.slug),
        "avatar": .attributes.author.data.attributes.avatar.data.attributes.url
      }],
      "tags": [.attributes.tags.data[].attributes.name],
      "url": ("https://www.meilisearch.com/blog/" + .attributes.slug)
    }]
}
