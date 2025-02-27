﻿#language: ru

@tree
@ExportScenarios

Функционал: Создание приходного ордера

Как Заведующий аптекой я хочу
Создать приходный ордер по поступлению товара
чтобы Пополнить запасы аптеки
Контекст:
	И я подключаю TestClient "Заведующий аптекой" логин "Заведующий аптекой" пароль ""
	И я закрываю все окна клиентского приложения
	И я запоминаю значение выражения 'ТекущаяДата()' в переменную "ТекДата"
	И Я запоминаю значение выражения 'Компания "Медэкспорт - Северная звезда" ООО (Омск)' в переменную "ПоставщикТовара"

//	И Я запоминаю значение выражения '133704' в переменную "НомерДокВход"
//	И Я запоминаю значение выражения '1004475' в переменную "АртикулТовара"
//	И Я запоминаю значение выражения '03.10.2023' в переменную "ДатаДокументаВход"
	

Сценарий: И я создаю приходный ордер
И В командном интерфейсе я выбираю 'Склад и доставка' 'Приемка'
Тогда открылось окно 'Приемка товаров на склад'
Когда открылось окно 'Приемка товаров на склад'
//Как сделать выбор последнего документа?
//
//		И В командном интерфейсе я выбираю 'Склад и доставка' 'Приемка'
//		Тогда открылось окно 'Приемка товаров на склад'
//		И в таблице "РаспоряженияНаПоступление" я перехожу к строке:
//			|'Номер'|
//			|'АСА1-001903'|
//вместо номера документа каждый раз копировать номер созданного поступления

И в таблице "РаспоряженияНаПоступление" я активизирую поле с именем "РаспоряженияНаПоступлениеТипДокумента"
И я нажимаю на кнопку с именем 'РаспоряженияНаПоступлениеСоздатьОрдер'
Тогда открылось окно 'Приходный ордер на товары (создание)'
И из выпадающего списка с именем "Помещение" я выбираю точное значение 'Торговый зал'
И я нажимаю кнопку выбора у поля с именем "Исполнитель"
Тогда открылось окно 'Выбор пользователя'
И в таблице "ПользователиСписок" я перехожу к строке:
	| 'Полное имя'                   |
	| 'Пискарев Александр Сергеевич' |
И в таблице "ПользователиСписок" я выбираю текущую строку
Тогда открылось окно 'Приходный ордер на товары (создание) *'
И в поле с именем 'Комментарий' я ввожу текст 'тест'
И я перехожу к закладке с именем "ГруппаТовары"
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыЗаполнитьСерииПоРаспоряжению'
И я нажимаю на кнопку с именем 'ФормаПровести'
Тогда открылось окно 'Приходный ордер на товары АСА1-* от *'
И из выпадающего списка с именем "Статус" я выбираю точное значение 'В работе'

//И из выпадающего списка с именем "Статус" я выбираю точное значение 'В работе'
//	И я нажимаю на кнопку с именем 'ФормаПровести'
//	И я перехожу к закладке с именем "ГруппаИнформация"
//	И я запоминаю значение поля с именем "Номер" как "НомерПрихОрд"
//	И я запоминаю значение поля с именем "Дата" как "ДатаПрихОрд"
//	Тогда открылось окно 'Приходный ордер на товары $НомерПрихОрд$ от $ДатаПрихОрд$'
//	И из выпадающего списка с именем "Статус" я выбираю точное значение 'Принят'
//	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
//	И я жду закрытия окна 'Приходный ордер на товары $НомерПрихОрд$ от $ДатаПрихОрд$' в течение 20 секунд


И я нажимаю на кнопку с именем 'ФормаЗаписать'
Тогда открылось окно 'Приходный ордер на товары АСА1-* от *'
И из выпадающего списка с именем "Статус" я выбираю точное значение 'Принят'
И я нажимаю на кнопку с именем 'ФормаЗаписать'
Тогда открылось окно 'Приходный ордер на товары АСА1-* от *'
//И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
//И я жду закрытия окна 'Приходный ордер на товары АСА1-003874 от *' в течение 20 секунд


