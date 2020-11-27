require 'yaml'
require 'json'
require 'nokogiri'

# из ХЭША в JSON, YAML
pre = { some1: "hello", some2: [1, 3, 5], some3: 55, some4: true, some5: {one: 1, two: 2}}  #создаем хэш
somefile = File.new("randname#{rand(100)}.json", 'w')       #создаем новый файл, задаем ему имя и режим чтения записи
somefile.puts pre.to_json                  #складем в файл хэш, конвертируя его в JSON/YAML


# из файла XML в код и поиск атрибутов по xpath
doc = Nokogiri::XML(File.read('demoxml.xml'))        #создаем переменную и открываем XML через Nokogiri gem
def xmlread(docname, tag, atr)
    puts docname.xpath("//#{tag}").attr("#{atr}")
end
xmlread(doc, 'ФИО', 'Имя')
xmlread(doc, 'ФИО', 'Отчество')
xmlread(doc, 'ФИО', 'Фамилия')

#парсим JSON из файла в хэш и извлекаем ключи и значения
file = File.read('randname74.json')
hash = JSON.parse(file)
hash["dependencies"]["turbolinks"].each do |key, value|
    puts "#{key} => #{value}"
end

#парсим YAML из файла в хэш и извлекаем ключи и значения
file = File.read('got_names.yaml')
hash = YAML.load(file)
puts hash["house_name"][:c]





