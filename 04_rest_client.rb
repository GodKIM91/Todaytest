require 'rest-client'
require 'JSON'

#делаем post request на сайт с регистрационными данными
req = RestClient.post("http://users.bugred.ru/tasks/rest/doregister", {
    email: "user#{rand(1000)}@gmail.com",
    name: "user#{rand(1000)}",
    password: "2281488"
    }
)

hash = JSON.parse(req.body) #парсим полученный JSON в хэш

#Ниже блок кода, если надо вывести весь хеш с данными пользователя
# hash.each do |key, value|
#     puts "#{key} => #{value}"
# end

unless hash["name"] == nil
puts "Ответ браузера: #{req.code}!\nПользователь успешно зарегистрирован!\nИмя пользователя #{hash["name"]}!\nEmail пользователя #{hash["email"]}!"
else
    puts "Пользователь с таким именем существует!"
end
