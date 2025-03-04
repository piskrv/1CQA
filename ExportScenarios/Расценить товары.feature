﻿#language: ru

@tree
@ExportScenarios

Функционал: Расценка товаров по поступлениям

Как Тестировщик я хочу
Расценить товары из поступлений,
чтобы впоследствии продавать их и списывать

Контекст:
	И я подключаю TestClient "Администратор" логин "Администратор" пароль "123"
	И я закрываю все окна клиентского приложения
	И Я запоминаю значение выражения 'Компания "Медэкспорт - Северная звезда" ООО (Омск)' в переменную "ПоставщикТовара"
	И я запоминаю значение выражения 'ТекущаяДата()' в переменную "ТекДата"

Сценарий: Я создаю Расценку товаров для артикула "Артикул1" с ценой "Цена1" и артикула "Артикул2" с ценой "Цена2"
	Когда В панели разделов я выбираю "Казначейство"
	И В панели разделов я выбираю "CRM и маркетинг"
	И В панели функций я выбираю "История изменения цен"
	И в таблице 'Список' я нажимаю на кнопку с именем 'СписокНайти'
	Когда открылось окно "Найти"
		И из выпадающего списка с именем 'FieldSelector' я выбираю точное значение "Комментарий"
		И в поле с именем 'Pattern' я ввожу текст "Для Автотеста"
		И я нажимаю на кнопку с именем 'Find'
		Тогда открылось окно "История изменения цен"
		И в таблице 'Список' я активизирую поле с именем 'СписокНомер'
		И в таблице 'Список' я активизирую поле с именем 'СписокДата'
		И в таблице 'Список' я нажимаю на кнопку с именем 'СписокСкопировать'
		Тогда открылось окно "Установка цен номенклатуры (создание)"
		И в поле с именем 'Комментарий' я ввожу текст "Автотест"
		И в таблице 'ДеревоЦен' я нажимаю на кнопку с именем 'ДеревоЦенДобавитьНоменклатуру'
		И в таблице 'ДеревоЦен' из выпадающего списка с именем 'ДеревоЦенНоменклатура' я выбираю по строке '[Артикул1]'
		И в таблице 'ДеревоЦен' я завершаю редактирование строки
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту
		И в таблице 'ДеревоЦен' в поле с именем 'ДеревоЦенВидЦеныec540ae1a7ba11e880d3e0db550a29d5' я ввожу текст '[Цена1]'
		И я перехожу к следующему реквизиту
		И в таблице 'ДеревоЦен' я завершаю редактирование строки
		И в таблице 'ДеревоЦен' я нажимаю на кнопку с именем 'ДеревоЦенДобавитьНоменклатуру'
		И в таблице 'ДеревоЦен' из выпадающего списка с именем 'ДеревоЦенНоменклатура' я выбираю по строке '[Артикул2]'
		И я перехожу к следующему реквизиту
		И в таблице 'ДеревоЦен' в поле с именем 'ДеревоЦенВидЦеныec540ae1a7ba11e880d3e0db550a29d5' я ввожу текст '[Цена2]'
		И я перехожу к следующему реквизиту
		И в таблице 'ДеревоЦен' я завершаю редактирование строки
		И я нажимаю на кнопку с именем 'ФормаПровести'

