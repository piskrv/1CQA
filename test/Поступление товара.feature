﻿#language: ru

@tree
@ExportScenarios

Функционал: Поступление товара

Как Заведующий аптекой я хочу
Создать поступление товара 
чтобы вдальнейшем принять товар ПО и пополнить запасы аптеки 

Контекст:

	И я подключаю TestClient "Заведующий аптекой" логин "Заведующий аптекой" пароль ""
	И я закрываю все окна клиентского приложения
	И Я запоминаю значение выражения 'Компания "Медэкспорт - Северная звезда" ООО (Омск)' в переменную "ПоставщикТовара"
//	И Я запоминаю значение выражения '3172430' в переменную "АртикулТовара1"
//	И Я запоминаю значение выражения '3174665' в переменную "АртикулТовара2"
//	И Я запоминаю значение выражения '3122877' в переменную "АртикулТовара3"
	И я запоминаю значение выражения 'ТекущаяДата()' в переменную "ТекДата"
	//И Я запоминаю значение выражения '10044751337' в переменную "НомерДокВход"

Сценарий: И я создаю документ приобритения в ручную	
	И Пауза 3
	И В командном интерфейсе я выбираю 'Закупки' 'Документы закупки (все)'
	Тогда открылось окно 'Документы закупки (все)'
	И Пауза 3
	И в таблице "СписокДокументыЗакупки" я нажимаю на кнопку с именем 'Создать_ЗакупкаУПоставщика_ПриобретениеТоваровУслуг'
	И Пауза 3
	Когда открылось окно 'Приобретение товаров и услуг (создание)'
	И из выпадающего списка с именем "Партнер" я выбираю точное значение 'Медэкспорт - Северная звезда ООО'
	И в поле с именем 'Комментарий' я ввожу текст 'Автотест'
	
	И я перехожу к закладке с именем "ГруппаТовары"
	Когда открылось окно 'Приобретение товаров и услуг (создание) *'
	//добавление товара. придумать, как тянуть случайный артикул
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыНоменклатура" я выбираю по строке '3172430'
	И в таблице "Товары" я активизирую поле с именем "ТоварыСерия"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыСерия"
	Тогда открылось окно 'Указание серии'
	И я нажимаю на кнопку с именем 'СгенерироватьНомер'
	И я нажимаю кнопку выбора у поля с именем "ГоденДо"
	Тогда открылось окно 'Укажите дату'
	И у поля 'Годен до' я перехожу к дате 25.12.2026
	И у поля 'Годен до' я перехожу к дате 25.12.2026
	И я нажимаю кнопку выбора у поля с именем "ГоденДо"
	Тогда открылось окно 'Указание серии'
	И я нажимаю на кнопку с именем 'ОК'
	Тогда открылось окно 'Приобретение товаров и услуг (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличествоУпаковок"
	И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '1,000'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '165,00'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ФК_ОтобразитьДанныеПротоколаСогласованияЦен'
	И в таблице "Товары" я активизирую поле с именем "ФК_ТоварыЦенаЗарегистрированная"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ФК_ТоварыЦенаЗарегистрированная' я ввожу текст '150,00'
	И в таблице "Товары" я активизирую поле с именем "ФК_ТоварыЦенаПроизводителяБезНДС"
	И в таблице "Товары" в поле с именем 'ФК_ТоварыЦенаПроизводителяБезНДС' я ввожу текст '150,00'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ФК_ОтобразитьДанныеПротоколаСогласованияЦен'
	//новый товар-
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыНоменклатура" я выбираю по строке '3174665'
	И в таблице "Товары" я активизирую поле с именем "ТоварыСерия"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыСерия"
	Тогда открылось окно 'Указание серии'
	И я нажимаю на кнопку с именем 'СгенерироватьНомер'
	И я нажимаю кнопку выбора у поля с именем "ГоденДо"
	Тогда открылось окно 'Укажите дату'
	И у поля 'Годен до' я перехожу к дате 25.12.2026
	И у поля 'Годен до' я перехожу к дате 25.12.2026
	И я нажимаю кнопку выбора у поля с именем "ГоденДо"
	Тогда открылось окно 'Указание серии'
	И я нажимаю на кнопку с именем 'ОК'
	Тогда открылось окно 'Приобретение товаров и услуг (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличествоУпаковок"
	И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '1,000'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '70,00'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ФК_ОтобразитьДанныеПротоколаСогласованияЦен'
	И в таблице "Товары" я активизирую поле с именем "ФК_ТоварыЦенаЗарегистрированная"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ФК_ТоварыЦенаЗарегистрированная' я ввожу текст '60,00'
	И в таблице "Товары" я активизирую поле с именем "ФК_ТоварыЦенаПроизводителяБезНДС"
	И в таблице "Товары" в поле с именем 'ФК_ТоварыЦенаПроизводителяБезНДС' я ввожу текст '60,00'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ФК_ОтобразитьДанныеПротоколаСогласованияЦен'
	//новый товар-
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыНоменклатура" я выбираю по строке '3122877'
	И в таблице "Товары" я активизирую поле с именем "ТоварыСерия"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыСерия"
	Тогда открылось окно 'Указание серии'
	И я нажимаю на кнопку с именем 'СгенерироватьНомер'
	И пауза 3
	И я запоминаю значение поля с именем "Номер" как "НомерВхДокПоСерии"
	И пауза 1
	И я нажимаю кнопку выбора у поля с именем "ГоденДо"
	Тогда открылось окно 'Укажите дату'
	И у поля 'Годен до' я перехожу к дате 25.12.2027
	И я нажимаю кнопку выбора у поля с именем "ГоденДо"
	Тогда открылось окно 'Указание серии'
	И я нажимаю на кнопку с именем 'ОК'
	Тогда открылось окно 'Приобретение товаров и услуг (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличествоУпаковок"
	И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '1,000'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '5,00'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ФК_ОтобразитьДанныеПротоколаСогласованияЦен'
	И в таблице "Товары" я активизирую поле с именем "ФК_ТоварыЦенаЗарегистрированная"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ФК_ТоварыЦенаЗарегистрированная' я ввожу текст '3,00'
	И в таблице "Товары" я активизирую поле с именем "ФК_ТоварыЦенаПроизводителяБезНДС"
	И в таблице "Товары" в поле с именем 'ФК_ТоварыЦенаПроизводителяБезНДС' я ввожу текст '3,00'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ФК_ОтобразитьДанныеПротоколаСогласованияЦен'
	И в таблице "Товары" я завершаю редактирование строки
	//записать
	Когда открылось окно 'Приобретение товаров и услуг (создание) *'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'Приобретение товаров и услуг АСА1-* от *'
	И я перехожу к закладке с именем "ГруппаДополнительно"
	//Как ввести случайное число? 
	И в поле с именем 'НомерВходящегоДокумента' я ввожу текст '$НомерВхДокПоСерии$'
	И я нажимаю кнопку выбора у поля с именем "ДатаВходящегоДокумента"
	И в поле с именем 'ДатаВходящегоДокумента' я ввожу текст '$ТекДата$'
	И я нажимаю на кнопку с именем 'ФормаПровести'
		
			