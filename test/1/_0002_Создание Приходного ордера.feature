﻿#language: ru

@tree
@ExportScenarios


Функционал: Создание приходного ордера

Как Тестировщик я хочу
Создать Приходный ордер 
чтобы убедиться в работоспособности базы

Контекст:
	И я подключаю TestClient "Заведующий аптекой" логин "Заведующий аптекой" пароль ""
	И я закрываю все окна клиентского приложения
		
Сценарий: Создание приходного ордера

	*Переход в приемку
		И В командном интерфейсе я выбираю 'Склад и доставка' 'Приемка'
		И я нажимаю на кнопку с именем 'Найти'
		И из выпадающего списка с именем 'ActiveFieldElement' я выбираю точное значение "Номер и дата входящего документа"
		И в поле с именем 'FindPatternElement' я ввожу текст '$НомерВхДокПоСерии$'
		И я нажимаю на кнопку с именем 'Find'
		И в таблице "РаспоряженияНаПоступление" я активизирую поле с именем "РаспоряженияНаПоступлениеНомер"

	*Создание приходного ордера
		И я нажимаю на кнопку с именем 'РаспоряженияНаПоступлениеСоздатьОрдер'
		Тогда открылось окно 'Приходный ордер на товары (создание)'
		И из выпадающего списка с именем "Помещение" я выбираю точное значение 'Торговый зал'
		И я нажимаю кнопку выбора у поля с именем "Исполнитель"
		И в таблице "ПользователиСписок" я перехожу к строке:
			| 'Полное имя'                   |
			| 'Пискарев Александр Сергеевич' |
		И в таблице "ПользователиСписок" я выбираю текущую строку
		Тогда открылось окно 'Приходный ордер на товары (создание) *'
		И в поле с именем 'Комментарий' я ввожу текст 'Автотест'
		И я перехожу к закладке с именем "ГруппаТовары"
		И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыЗаполнитьСерииПоРаспоряжению'
		И я нажимаю на кнопку с именем 'ФормаПровести'
		И из выпадающего списка с именем 'Статус' я выбираю точное значение "В работе"
		И я перехожу к закладке с именем "ГруппаИнформация"	
		И я запоминаю значение поля с именем "Номер" как "НомерПрихОрд"
		И я запоминаю значение поля с именем "Дата" как "ДатаПрихОрд"
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
		Тогда открылось окно 'Приходный ордер на товары $Перфикс$-*'
		И из выпадающего списка с именем 'Статус' я выбираю точное значение 'Принят'
		И я нажимаю на кнопку с именем 'ФормаЗаписать'

	*Провекрка распроведения
		И я нажимаю на кнопку с именем 'ФормаОтменаПроведения'
		Тогда открылось окно "1С:Предприятие"
		И я нажимаю на кнопку с именем 'Button0'