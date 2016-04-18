json.array!(@promo_bars) do |promo_bar|
  json.extract! promo_bar, :id, :title, :headline, :link, :user_id
  json.url promo_bar_url(promo_bar, format: :json)
end
