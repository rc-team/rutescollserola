def full_title(page_title)
  base_title = "Rutes Collserola"
  if page_title.empty?
    "Rutes en bicicleta per Collserola"
  else
    "#{page_title} - #{base_title}"
  end
end
