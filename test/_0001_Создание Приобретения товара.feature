﻿#language: ru

@tree
//	@ExportScenarios


Функционал: Создание приобретения товара

Как Тестировщик я хочу
Создать приобретение товаров   
чтобы убедиться в работоспособности базы

Контекст:
	И я подключаю TestClient "Заведующий аптекой" логин "Заведующий аптекой" пароль ""
	И я закрываю все окна клиентского приложения
		
Сценарий: Создание приобретения

	*Создание приобретения
		И В командном интерфейсе я выбираю 'Закупки' 'Документы закупки (все)'
		Тогда открылось окно 'Документы закупки (все)'
		И Пауза 1
		И в таблице "СписокДокументыЗакупки" я нажимаю на кнопку с именем 'Создать_ЗакупкаУПоставщика_ПриобретениеТоваровУслуг'
		И Пауза 1
		Когда открылось окно 'Приобретение товаров и услуг (создание)*'
		И из выпадающего списка с именем "Партнер" я выбираю точное значение 'Медэкспорт - Северная звезда ООО'
		И в поле с именем 'Комментарий' я ввожу текст 'Автотест'
		И я перехожу к закладке с именем "ГруппаТовары"	

	*Создание товара
		И Я создаю товар с Артикулом: "3172430" ценой: "56" ценой зарегистрированной: "56" И количеством: "2"
		И Я создаю товар с Артикулом: "3132562" ценой: "236" ценой зарегистрированной: "236" И количеством: "1"
		////Придумать, как тянуть случайный артикул
					//	3172430 - пастилки 
					//  3174665 - корвалол
					//  3122877 - пакет
					//  3132562 - очки

	*Создание входящего номера документа
		И Я создаю товар с Артикулом: "3122877" и удаляю его, чтобы создать номер документа

	*Генерация и запись ВШК
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
		И я запоминаю  заголовок текущего окна как "Перфикс2"	
		И Я запоминаю значение выражения 'Прав($Перфикс2$, 34)' в переменную "Перфикс1"
		И Я запоминаю значение выражения 'Лев($Перфикс1$, 4)' в переменную "Перфикс"
		Когда открылось окно "Приобретение товаров и услуг $Перфикс$-*"
		И я делаю 7 раз
			И я перехожу к следующему реквизиту
		И в таблице 'Товары' я активизирую поле с именем 'ТоварыХарактеристика'
		И я выбираю пункт контекстного меню с именем 'ТоварыНайти' на элементе формы с именем 'Товары'
		И я запоминаю значение поля с именем 'FindPatternElement' как "ВШК02"
		И Я запоминаю значение выражения 'Лев($ВШК02$, 13)' в переменную "ВШК2"
		Когда открылось окно "Найти"
		И я нажимаю на кнопку с именем 'Cancel'
		Когда открылось окно "Приобретение товаров и услуг $Перфикс$-*"
		И в таблице 'Товары' я перехожу на одну строку вверх
		И я выбираю пункт контекстного меню с именем 'ТоварыНайти' на элементе формы с именем 'Товары'
		И я запоминаю значение поля с именем 'FindPatternElement' как "ВШК01"
		И Я запоминаю значение выражения 'Лев($ВШК01$, 13)' в переменную "ВШК1"
		Когда открылось окно "Найти"
		И я нажимаю на кнопку с именем 'Cancel'

	*Проверка : 
			И таблица 'Товары' содержит строки:
			| 'Артикул'	|
			| '3172430'	|
			| '3172430'	|

	*Запоминаем ВШК для перемещения и Наименование для расценки
		И я запоминаю значение таблицы 'Товары' как 'Товары'
		| 'Номенклатура' |
		И для каждого значения "СтрокаТаблицы" из таблицы в памяти "Товары"
		И я запоминаю значение выражения 'Контекст.СтрокаТаблицы["Номенклатура"]' в переменную 'Номенклатура'
		И я вывожу значение переменной '$Номенклатура$'
		И Я запоминаю в переменную 'Номенклатура1' значение '$Номенклатура.Товары2$'
		И Я запоминаю в переменную 'Серия1' значение '$Серия$'
		И Я запоминаю в переменную 'ДатаСерии1' значение '$ДатаСерии$'

	*Номер входящего документа
		И я перехожу к закладке с именем "ГруппаДополнительно"
		И в поле с именем 'НомерВходящегоДокумента' я ввожу текст '$НомерВхДокПоСерии$'
		И я нажимаю кнопку выбора у поля с именем "ДатаВходящегоДокумента"
		И в поле с именем 'ДатаВходящегоДокумента' я ввожу текст '$ТекДата$'
		И я нажимаю на кнопку с именем 'ФормаПровести'
		И я запоминаю значение поля с именем "Номер" как "НомерПриобретения"
		И я запоминаю значение поля с именем "Дата" как "ДатаПриобретения"

		*Проверка номера документа
		Тогда открылось окно "Приобретение товаров и услуг $НомерПриобретения$ от *"
//Добавить проверку распроведения