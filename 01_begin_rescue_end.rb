begin
    as "блок выполнился, так как нет исключений" #вызываем исключение
rescue StandardError => e
    raise e, e.message + " не удалось выполнить блок begin" #выводим ошибку + наш текст
ensure
    puts "этот блок выполняется в любом случае"
end