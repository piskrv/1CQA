﻿#language: ru

@tree
@ExportScenarios

Функционал: Экспортный сценарий для добавления товара в поступления

Как Тестировщик я хочу
Упростить процесс создания поступления до двух строк 
чтобы Экономить вермя  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Я создаю товар с Артикулом: "Артикул" ценой: "ЦенаТовара" ценой зарегистрированной: "НДС" И количеством: "Количество"
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыНоменклатура" я выбираю по строке '[Артикул]'
	И в таблице "Товары" я активизирую поле с именем "ТоварыСерия"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыСерия"
	Тогда открылось окно 'Указание серии'
	И я нажимаю на кнопку с именем 'СгенерироватьНомер'
	И пауза 3
	И я запоминаю значение поля с именем "Номер" как "Серия"
	И пауза 1
	И я нажимаю кнопку выбора у поля с именем "ГоденДо"
	Тогда открылось окно 'Укажите дату'
	И у поля 'Годен до' я перехожу к дате 25.12.2026
	И у поля 'Годен до' я перехожу к дате 25.12.2026
	И я нажимаю кнопку выбора у поля с именем "ГоденДо"
	Тогда открылось окно 'Указание серии'
	И я запоминаю значение поля с именем "ГоденДо" как "ДатаСерии"
	И я нажимаю на кнопку с именем 'ОК'
	Тогда открылось окно 'Приобретение товаров и услуг (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличествоУпаковок"
	И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '[Количество]'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '[ЦенаТовара]'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ФК_ОтобразитьДанныеПротоколаСогласованияЦен'
	И в таблице "Товары" я активизирую поле с именем "ФК_ТоварыЦенаЗарегистрированная"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ФК_ТоварыЦенаЗарегистрированная' я ввожу текст '[НДС]'
	И в таблице "Товары" я активизирую поле с именем "ФК_ТоварыЦенаПроизводителяБезНДС"
	И в таблице "Товары" в поле с именем 'ФК_ТоварыЦенаПроизводителяБезНДС' я ввожу текст '[НДС]'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ФК_ОтобразитьДанныеПротоколаСогласованияЦен'