﻿#language: ru

@tree
@ExportScenarios


Функционал: Открытие кассовой смены

Как TestClient
Я хочу проверить возможность открытия и закрытия кассовой смены
Чтобы проверить возможность открытия и закрытия кассовой смены 

Контекст:
	
	Дано Я открыл сеанс TestClient от имени "Касса1" с паролем "" или подключаю уже существующий
	И Я запоминаю значение выражения '16 231,50' в переменную "СуммаВыемки"
	И Я запоминаю значение выражения 'Сейф (Дианова 39)' в переменную "КассаОрганизации"
	И Я запоминаю значение выражения 'Касса № 1 (Аптечная сеть Фармакопейка ООО (Омская обл, г. Омск, ул. Дианова, дом № 39))' в переменную "КассаОтправительОрдер"
	И Я запоминаю значение выражения 'Мизюн Оксана Геннадьевна' в переменную "ИмяКассира"
	
Сценарий:И я создаю окончание кассовой смены		
	И В командном интерфейсе я выбираю 'Продажи' 'Рабочее место кассира'
	// Тогда открылось окно 'Продажа (Кассир: Касса * Продавец: $ИмяКассира$)'
	И я нажимаю на кнопку с именем 'ОткрытьМенюОперацииСККМ'
	Тогда открылось окно 'Операции с ККМ'
	И я нажимаю на кнопку с именем 'ВыемкаДенежныхСредств'
	Тогда открылось окно 'Введите сумму выемки'
	И в поле с именем 'Сумма' я ввожу текст '$СуммаВыемки$'
	И я нажимаю на кнопку с именем 'Внести'
	И В командном интерфейсе я выбираю 'Казначейство' 'Приходные кассовые ордера'
	Тогда открылось окно 'Оформление приходных кассовых ордеров'
	И в таблице "ПриходныеКассовыеОрдера" я нажимаю на кнопку с именем 'ПриходныеКассовыеОрдераСоздатьПоступлениеДенежныхСредствИзДругойКассы'	
	Когда открылось окно 'Приходный кассовый ордер (создание)'
	И из выпадающего списка с именем "КассаОтправитель" я выбираю точное значение '$КассаОтправительОрдер$'
	И в поле с именем 'СуммаДокумента' я ввожу текст '$СуммаВыемки$'
	И я перехожу к закладке с именем "СтраницаПечать"
	И в поле с именем 'ПринятоОт' я ввожу текст '$ИмяКассира$'
	Когда открылось окно 'Приходный кассовый ордер (создание) *'
	И в поле с именем 'Основание' я ввожу текст 'Выемка'
	И я нажимаю кнопку выбора у поля с именем "Кассир"
	Тогда открылось окно 'Выбор пользователя'
	И в таблице "ПользователиСписок" я перехожу к строке:
		| 'Полное имя'   |
		| '$ИмяКассира$' |
	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
	Тогда открылось окно 'Приходный кассовый ордер (создание) *'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	//И я нажимаю на кнопку с именем 'ФормаПровести'
	И Пауза 5
	И я перехожу к закладке с именем "СтраницаОсновное"
	И я запоминаю значение поля с именем "Номер" как 'НомерОрдера'
	И я запоминаю значение поля с именем "Дата" как "ДатаОрдера"
	* И я провалидирую форму создания конрагента
		И элемент формы с именем "Номер" стал равен '$НомерОрдера$'
		И элемент формы с именем "Дата" стал равен '$ДатаОрдера$'
		И элемент формы с именем 'СуммаДокумента' стал равен '$СуммаВыемки$'
		И элемент формы с именем 'Касса' стал равен '$КассаОрганизации$'
		И элемент формы с именем 'КассаОтправитель' стал равен '$КассаОтправительОрдер$'
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Приходный кассовый ордер $НомерОрдера$ от $ДатаОрдера$' в течение 20 секунд
	И В командном интерфейсе я выбираю 'Продажи' 'Рабочее место кассира'
	Тогда открылось окно 'Продажа (Кассир: Касса * Продавец: $ИмяКассира$)'
	И я нажимаю на кнопку с именем 'ОткрытьМенюОперацииСККМ'
	Тогда открылось окно 'Операции с ККМ'
	И я нажимаю на кнопку с именем 'ЗакрытьКассовуюСмену'
	И я закрываю все окна клиентского приложения







	
	
	
