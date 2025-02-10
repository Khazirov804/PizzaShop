# Инициализируем пустой хеш для хранения информации о заказах
hh = {}

# Бесконечный цикл для ввода данных
loop do
  # Запрашиваем у пользователя идентификатор продукта
  print 'Введите идентификатор продукта: '
  id = gets.chomp # Читаем строку ввода и убираем символ новой строки

  # Запрашиваем у пользователя количество товара, которое он хочет заказать
  print 'Введите количество (сколько товаров вы хотите заказать): '
  n = gets.chomp.to_i # Читаем строку ввода, преобразуем её в число

  # Если продукт уже есть в хеше, извлекаем его текущее количество
  # Если продукта ещё нет, возвращаем 0 (по умолчанию)
  x = hh[id].to_i

  # Увеличиваем текущее количество на введённое значение
  x = x + n

  # Обновляем хеш: сохраняем новое количество для данного идентификатора
  hh[id] = x

  # Выводим текущий хеш для проверки результата
  puts hh.inspect
end
