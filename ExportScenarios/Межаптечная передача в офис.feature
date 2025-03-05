﻿#language: ru

@tree
@ExportScenarios

Функционал: Межаптечная передача товара в офис

Как Заведующий аптеки я хочу
Совершить межаптечку в офис
чтобы передать товар туда  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Я создаю перемещение товара в офис

*Создание ордера 
	И В командном интерфейсе я выбираю 'Склад и доставка' 'Ордера на отражение недостач товаров'
	Тогда открылось окно 'Ордера на отражение недостач товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Когда открылось окно 'Ордер на отражение недостач товаров (создание)'
	И я нажимаю кнопку выбора у поля с именем "Склад"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я активизирую дополнение формы с именем "СписокСтрокаПоиска"
	И в таблице "Список" в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст 'Дианова'
	И Пауза 3
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Ордер на отражение недостач товаров (создание) *'
	И из выпадающего списка с именем "Помещение" я выбираю точное значение 'Торговый зал'
	И я устанавливаю флаг с именем 'ФК_МежаптечнаяПередача'	
	И в поле с именем 'Комментарий' я ввожу текст 'Автотест'
	И я перехожу к закладке с именем "ГруппаТовары"
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыПоискПоШтрихкоду'
	Тогда открылось окно 'Введите штрихкод'
	И в поле с именем 'InputFld' я ввожу текст '$ВШК2$'
	И я нажимаю на кнопку с именем 'OK'
	Тогда открылось окно 'Подбор серий по остаткам на складе'
	И я меняю значение переключателя с именем 'РежимОтображенияСерий' на 'Все'
	И в таблице "ОстаткиСерий" я перехожу к первой строке
	И в таблице "ОстаткиСерий" я активизирую поле с именем "ОстаткиСерийКоличествоУпаковок"
	И в таблице "ОстаткиСерий" в поле с именем 'ОстаткиСерийКоличествоУпаковок' я ввожу текст '1,000'
	И в таблице "ОстаткиСерий" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ЗавершитьВводСерий'
	Тогда открылось окно 'Ордер на отражение недостач товаров (создание) *'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля с именем "Номер" как "НомерПеремещенияОфис"
	И я запоминаю значение поля с именем "Дата" как "ДатаПеремещения"
	И я нажимаю на кнопку с именем 'ФормаПровести'
	Когда открылось окно "Ордер на отражение недостач товаров $НомерПеремещенияОфис$ от *"

*Создание Акта
	И я нажимаю на кнопку с именем 'ПодменюСоздатьНаОснованииОбычное_Авто_B6E343844833089D0C7D4F7983A4531F'
	Тогда открылось окно "Списание недостач товаров (создание)"
	И я нажимаю кнопку выбора у поля с именем 'СтатьяРасходов'
	Когда открылось окно "Выбор статьи расходов"
	И в таблице 'СтатьиРасходов' я нажимаю на кнопку с именем 'СтатьиРасходовНайти'
	Когда открылось окно "Найти"
	И из выпадающего списка с именем 'FieldSelector' я выбираю точное значение "Наименование"
	И в поле с именем 'Pattern' я ввожу текст "межаптечная"
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно "Выбор статьи расходов"
	И в таблице 'СтатьиРасходов' я активизирую поле с именем 'СтатьиРасходовКод'
	И в таблице 'СтатьиРасходов' я нажимаю на кнопку с именем 'СтатьиРасходовКнопкаВыбрать'
	Тогда открылось окно "Списание недостач товаров (создание)*"
	И из выпадающего списка с именем 'АналитикаРасходов' я выбираю точное значение "Аптечная сеть Фармакопейка ООО (Омская обл, г. Омск, ул. Дианова, дом № 39)"