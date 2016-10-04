require "json"
require "open-uri"

puts "Entrez un numéro de code-barre :"
bar_code= gets.chomp

url="http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"

json = open(url).read
dat = JSON.parse(json)

puts data["product"]["product_name"]
