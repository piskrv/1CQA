﻿#language: ru

@tree
@ExportScenarios

Функционал: Пробитие немаркированного товара

Как Администратор
Я хочу Пробить немаркированный товар
Чтобы проверить работу кассы

Контекст:
	Дано Я открыл сеанс TestClient от имени "Администратор" с паролем "123" или подключаю уже существующий


Сценарий: Продажа товара
	

	И В командном интерфейсе я выбираю 'Продажи' 'Рабочее место кассира'
	Тогда открылось окно 'Продажа (Кассир: Администратор, Продавец: *)*'
	Когда открылось окно 'Продажа (Кассир: Администратор, Продавец: *)*'
	//Открыть смену
	Когда открылось окно 'Продажа (Кассир: Администратор, Продавец: <Не выбран>)'
	И я нажимаю на кнопку с именем 'ОткрытьМенюОперацииСККМ'
	Тогда открылось окно 'Операции с ККМ'
	И я нажимаю на кнопку с именем 'ОткрытьКассовуюСмену'
	И Я закрываю окно 'Операции с ККМ'	
	И я нажимаю на кнопку с именем 'ИзменитьПродавца'
	Тогда открылось окно 'Выбор текущего продавца'
	И из выпадающего списка с именем "Пользователь" я выбираю по строке 'мизюн'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
//	Тогда открылось окно 'Выбор текущего продавца'
//	И я нажимаю кнопку выбора у поля "Пользователь"
//	Тогда открылось окно 'Выбор пользователя'
//	И в таблице "ПользователиСписок" я перехожу к строке:
//		| Полное имя               |
//		| Мизюн Оксана Геннадьевна |
//	И я нажимаю на кнопку с именем 'ВыбратьПользователя'
//	Тогда открылось окно 'Выбор текущего продавца'
//	И я нажимаю на кнопку 'Выбрать'
	Тогда открылось окно 'Продажа (Кассир: Администратор, Продавец: Мизюн Оксана Геннадьевна)'
	И я нажимаю на кнопку 'Новый чек'
	И я нажимаю на кнопку 'Штрихкод'
	Тогда открылось окно 'Введите штрихкод'
	И в поле 'InputFld' я ввожу текст '2000001785331'
	И я нажимаю на кнопку 'OK'
	Тогда открылось окно 'Продажа (Кассир: Администратор, Продавец: Мизюн Оксана Геннадьевна) *'
	И я нажимаю на кнопку 'Рассчитать скидки'
	И я нажимаю на кнопку 'Оплатить наличными'
	Тогда открылось окно 'Оплата наличными'
	И я перехожу к закладке "Страница прочее"
	И я нажимаю на кнопку 'Команда1'
	И я нажимаю на кнопку 'Команда5'
	И я нажимаю на кнопку 'Пробить чек (Alt+F2)'
	И я нажимаю на кнопку 'Операции с ККМ'
	Тогда открылось окно 'Операции с ККМ'
	И я нажимаю на кнопку 'Закрыть смену'
	Когда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button0'	
	Тогда открылось окно 'Отчет о розничных продажах АС* от *'
	И Я закрываю окно 'Отчет о розничных продажах АС* от *'
	Когда открылось окно 'Операции с ККМ'
	И Я закрываю окно 'Операции с ККМ'	
//	И Я закрываю окно 'Продажа (Кассир: Администратор, Продавец: Мизюн Оксана Геннадьевна)'
//	И я закрываю сеанс TESTCLIENT
