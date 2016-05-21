require 'wikidata/fetcher'

fr = WikiData::Category.new( 'Catégorie:Personnalité politique papouasienne', 'fr').member_titles
en = WikiData::Category.new( 'Category:Papua New Guinean politicians', 'en').member_titles
de = WikiData::Category.new( 'Kategorie:Politiker (Papua-Neuguinea)', 'de').member_titles
el = WikiData::Category.new( 'Κατηγορία:Πολιτικοί της Παπούα Νέας Γουινέας', 'el').member_titles
es = WikiData::Category.new( 'Categoría:Políticos de Papúa Nueva Guinea', 'es').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: en, fr: fr, de: de, el: el, es: es }, output: false)

