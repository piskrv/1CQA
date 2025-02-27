﻿#language: ru

@tree
@ExportScenarios


Функционал: Проверка всех функций

Как Тестировщик я хочу
Проверить все основные функции пользователя Заведующий аптекой  
чтобы убедиться в работоспособности базы



Сценарий: Создание приобритения в ручную
Контекст:
	И я подключаю TestClient "Заведующий аптекой" логин "Заведующий аптекой" пароль ""
	И я закрываю все окна клиентского приложения
	И Я запоминаю значение выражения 'Компания "Медэкспорт - Северная звезда" ООО (Омск)' в переменную "ПоставщикТовара"
	И я запоминаю значение выражения 'ТекущаяДата()' в переменную "ТекДата"
			//	И Я запоминаю значение выражения '3172430' в переменную "АртикулТовара1"
			//	И Я запоминаю значение выражения '3174665' в переменную "АртикулТовара2"
			//	И Я запоминаю значение выражения '3122877' в переменную "АртикулТовара3"
			//	И Я запоминаю значение выражения 'ТекущаяДата()' в переменную "ДатаДокументаВход"
				// Номер приходного ордера $НомерПрихОрд$
				//Номер приобретения $НомерПриобретения$
				//Номер Ордера на недостачи $НомерОрдераН$
				//Номер Ордера на излишки $НомерОрдераИ$
				//Номер Расходного оредра $НомерРасхОрд$
				//Номер Акта о Расхождениях $НомерАкта1$
				//Номер Акта о Расхождениях $НомерКорректировки1$
//Добавить проверку распроведения

*Создание приобретения
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

				////Придумать, как тянуть случайный артикул
*Создание товара

	И Я создаю товар с Артикулом: "3172430" ценой: "20" ценой зарегистрированной: "2"
	И Я создаю товар с Артикулом: "3174665" ценой: "70" ценой зарегистрированной: "20"
	
				//	3172430 - пастилки 
				//  3174665 - корвалол
				//  3122877 - пакет
				//  3132562 - очки 

*Создание входящего номера документа

	И Я создаю товар с Артикулом: "3122877" и удаляю его, чтобы создать номер документа

*Генерация и запись ВШК

	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Когда открылось окно "Приобретение товаров и услуг *"
	И я перехожу к следующему реквизиту
	И я перехожу к следующему реквизиту
	И я перехожу к следующему реквизиту
	И я перехожу к следующему реквизиту
	И я перехожу к следующему реквизиту
	И я перехожу к следующему реквизиту
	И я перехожу к следующему реквизиту
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыХарактеристика'
	И я выбираю пункт контекстного меню с именем 'ТоварыНайти' на элементе формы с именем 'Товары'
	И я запоминаю значение поля с именем 'FindPatternElement' как "ВШК02"
	И Я запоминаю значение выражения 'Лев($ВШК02$, 13)' в переменную "ВШК2"
	Когда открылось окно "Найти"
	И я нажимаю на кнопку с именем 'Cancel'
	Когда открылось окно "Приобретение товаров и услуг АСА1-* от *"
	И в таблице 'Товары' я перехожу на одну строку вверх
	И я выбираю пункт контекстного меню с именем 'ТоварыНайти' на элементе формы с именем 'Товары'
	И я запоминаю значение поля с именем 'FindPatternElement' как "ВШК01"
	И Я запоминаю значение выражения 'Лев($ВШК01$, 13)' в переменную "ВШК1"
	Когда открылось окно "Найти"
	И я нажимаю на кнопку с именем 'Cancel'
	//Проверка : 
	// И таблица 'Товары' содержит строки:
	// |'Артикул'	|
	// |'$Артикул1$'|
	// |'$Артикул2$'|
*Номер входящего документа

	И я перехожу к закладке с именем "ГруппаДополнительно"
				//Как ввести случайное число? 
	И в поле с именем 'НомерВходящегоДокумента' я ввожу текст '$НомерВхДокПоСерии$'
	И я нажимаю кнопку выбора у поля с именем "ДатаВходящегоДокумента"
	И в поле с именем 'ДатаВходящегоДокумента' я ввожу текст '$ТекДата$'
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я запоминаю значение поля с именем "Номер" как "НомерПриобретения"
	И я запоминаю значение поля с именем "Дата" как "ДатаПриобретения"
	//Проверка : 
	// И таблица "СписокДокументыЗакупки" содержит строки:
	// |'Номер'|
	// |'$НомерПриобретения$'|
//и Я создаю расценку товаров для артикула 
Сценарий: Создание приходного ордера в ручную

*Переход в приемку
	И В командном интерфейсе я выбираю 'Склад и доставка' 'Приемка'
	Тогда открылось окно 'Приемка товаров на склад'
	Когда открылось окно 'Приемка товаров на склад'
	И я нажимаю на кнопку с именем 'Найти'
	Тогда открылось окно 'Найти'
	Когда открылось окно 'Найти'
	И в поле с именем 'FindPatternElement' я ввожу текст '$НомерПриобретения$'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно 'Приемка товаров на склад'
	И в таблице "РаспоряженияНаПоступление" я активизирую поле с именем "РаспоряженияНаПоступлениеНомер"

*Создание приходного ордера

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
	И в поле с именем 'Комментарий' я ввожу текст 'Автотест'
	И я перехожу к закладке с именем "ГруппаТовары"
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыЗаполнитьСерииПоРаспоряжению'
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И из выпадающего списка с именем 'Статус' я выбираю точное значение "В работе"
	И я перехожу к закладке с именем "ГруппаИнформация"	
	И я запоминаю значение поля с именем "Номер" как "НомерПрихОрд"
	И я запоминаю значение поля с именем "Дата" как "ДатаПрихОрд"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'Приходный ордер на товары $НомерПрихОрд$ от $ДатаПрихОрд$'
	И из выпадающего списка с именем 'Статус' я выбираю точное значение 'Принят'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Если открылось окно "1С:Предприятие" Тогда
		И я нажимаю на кнопку с именем 'Button0'
	//	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'

//Сценарий: Создание Ордеров на списание и оприходование		

*Сценарий: Создание ордера и акта на списание вручную
//	И Я создаю ордер и акт на списание

*Сценарий: Создание ордера и акта на оприходование вручную
//  И Я создаю ордер и акт на оприходование

Сценарий: Создание Корректировки на недостачу (и возврат)
*Создание Акта о расхождениях
	И В командном интерфейсе я выбираю "Закупки" "Документы закупки (все)"
	Тогда открылось окно "Документы закупки (все)"
	Когда открылось окно "Документы закупки (все)"
	И в таблице 'СписокДокументыЗакупки' я нажимаю на кнопку с именем 'СписокНайти'
	Тогда открылось окно "Найти"
	И из выпадающего списка с именем 'FieldSelector' я выбираю точное значение "Номер"
	И в поле с именем 'Pattern' я ввожу текст "$НомерПриобретения$"
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно "Документы закупки (все)"
	И в таблице 'СписокДокументыЗакупки' я выбираю текущую строку
	Тогда открылось окно 'Приобретение товаров и услуг $НомерПриобретения$ от *'
	И я нажимаю на кнопку с именем 'ПодменюСоздатьНаОснованииОбычное_Авто_941BDB19E54AE235EB593A74638ACD6A'
	Тогда открылось окно "Акт о расхождениях после поступления (Создание)*"
	И я перехожу к закладке с именем 'СтраницаТовары'
		//Ломается на этапе выбора способа отработки 
	Тогда открылось окно "Акт о расхождениях после поступления (Создание)"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличествоУпаковок'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст "0,000"
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыДействие'
	И в таблице 'Товары' я выбираю текущую строку

	Тогда открылось окно "Как отработать недостачу"
	И я меняю значение переключателя с именем 'ОформитьНедостачу' на 'Оформить'
	И элемент формы с именем 'ОформитьНедостачу' стал равен "Оформить"
	И я нажимаю на кнопку с именем 'ФормаОК'
	Тогда открылось окно "Акт о расхождениях после поступления *"
	//Когда открылось окно "Акт о расхождениях после поступления (Создание) *"
	И из выпадающего списка с именем 'ТоварыКомментарийМенеджераПодвал' я выбираю точное значение "Внутритарная недостача"
	И в поле с именем 'ТоварыКомментарийПоставщикаПодвал' я ввожу текст "Недостача"
	И я перехожу к закладке с именем 'СтраницаОсновное'
	И в поле с именем 'Комментарий' я ввожу текст 'Автотест'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля с именем "Номер" как "НомерАкта1"
	И я запоминаю значение поля с именем "Дата" как "ДатаАкта1"
	Тогда открылось окно "Акт о расхождениях после поступления $НомерАкта1$ от *"
	И я нажимаю на кнопку с именем 'ФормаПровести'
	//Тогда открылось окно "Акт о расхождениях после поступления АСА1-* от *"
	И из выпадающего списка с именем 'Статус' я выбираю точное значение "Отрабатывается"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	//Когда открылось окно "Акт о расхождениях после поступления $НомерАкта1$ от $ДатаАкта1$*"
	И я нажимаю на гиперссылку с именем 'ОформитьДокументы'
	Когда открылось окно "Оформляемые документы"
	И в табличном документе 'ТабличныйДокумент' я перехожу к ячейке "R5C3"
	И в табличном документе 'ТабличныйДокумент' я делаю двойной клик на текущей ячейке
*Создание Корректировки
	Когда открылось окно "Корректировка приобретения (создание)"
	И я перехожу к закладке с именем 'ГруппаТовары'
	И я перехожу к закладке с именем 'ГруппаРасхождения'
	И в таблице 'Расхождения' я активизирую поле с именем 'РасхожденияВариантОтражения'
	И в таблице 'Расхождения' я выбираю текущую строку
	И в таблице 'Расхождения' из выпадающего списка с именем 'РасхожденияВариантОтражения' я выбираю точное значение "Уменьшить закупку, учесть при инвентаризации"
	И я перехожу к закладке с именем 'ГруппаОсновное'
	И в таблице 'Расхождения' я завершаю редактирование строки
	И в поле с именем 'Комментарий' я ввожу текст "Автотест"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля с именем "Номер" как "НомерКорректировки1"
	И я запоминаю значение поля с именем "Дата" как "ДатаКорректировки1"	
	Когда открылось окно "Корректировка приобретения $НомерКорректировки1$ от $ДатаКорректировки1$"
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я нажимаю на кнопку с именем 'ФормаПровести'
	Тогда открылось окно "Корректировка приобретения $НомерКорректировки1$ от *"
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я нажимаю на кнопку с именем 'ФормаДокументРасходныйОрдерНаТоварыСоздатьНаОсновании'	
	
*Создание Расходного ордера 
	//И я нажимаю на кнопку с именем 'ФормаДокументРасходныйОрдерНаТоварыСоздатьНаОсновании'
	Тогда открылось окно "Расходный ордер на товары (создание)"
	И из выпадающего списка с именем 'Помещение' я выбираю точное значение "Торговый зал"
	И в поле с именем 'Комментарий' я ввожу текст "Автотест"
	И я перехожу к закладке с именем 'ГруппаТоварыПоРаспоряжениям'
	И я перехожу к закладке с именем 'ГруппаОтгружаемыеТовары'
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я запоминаю значение поля с именем "Номер" как "НомерРасхОрд"
	И я запоминаю значение поля с именем "Дата" как "ДатаРасхОрд"
	Тогда открылось окно "Расходный ордер на товары $НомерРасхОрд$ от *"
	И из выпадающего списка с именем 'Статус' я выбираю точное значение "К отбору"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно "Расходный ордер на товары $НомерРасхОрд$ от *"
	И из выпадающего списка с именем 'Статус' я выбираю точное значение "К проверке"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно "Расходный ордер на товары $НомерРасхОрд$ от *"
	И из выпадающего списка с именем 'Статус' я выбираю точное значение "Проверен"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно "Расходный ордер на товары $НомерРасхОрд$ от *"
	И из выпадающего списка с именем 'Статус' я выбираю точное значение "К отгрузке"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно "Расходный ордер на товары $НомерРасхОрд$ от *"
	И из выпадающего списка с именем 'Статус' я выбираю точное значение "Отгружен"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Если открылось окно "1С:Предприятие" Тогда
		И я нажимаю на кнопку с именем 'Button0'
		*Переход в приемку Если ПО не создался
		И В командном интерфейсе я выбираю 'Склад и доставка' 'Приемка'
		Тогда открылось окно 'Приемка товаров на склад'
		Когда открылось окно 'Приемка товаров на склад'
		И я нажимаю на кнопку с именем 'Найти'
		Тогда открылось окно 'Найти'
		Когда открылось окно 'Найти'
		И в поле с именем 'FindPatternElement' я ввожу текст '$НомерПриобретения$'
		И я нажимаю на кнопку с именем 'Find'
		Тогда открылось окно 'Приемка товаров на склад'
		И в таблице "РаспоряженияНаПоступление" я активизирую поле с именем "РаспоряженияНаПоступлениеНомер"

	*Создание приходного ордера

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
		И в поле с именем 'Комментарий' я ввожу текст 'Автотест'
		И я перехожу к закладке с именем "ГруппаТовары"
		И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыЗаполнитьСерииПоРаспоряжению'
		И я нажимаю на кнопку с именем 'ФормаПровести'
		И из выпадающего списка с именем 'Статус' я выбираю точное значение "В работе"
		И я перехожу к закладке с именем "ГруппаИнформация"	
		И я запоминаю значение поля с именем "Номер" как "НомерПрихОрд"
		И я запоминаю значение поля с именем "Дата" как "ДатаПрихОрд"
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
		Тогда открылось окно 'Приходный ордер на товары $НомерПрихОрд$ от $ДатаПрихОрд$'
		И из выпадающего списка с именем 'Статус' я выбираю точное значение 'Принят'
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
		
	
	И В панели открытых я выбираю "Акт о расхождениях после поступления $НомерАкта1$ от *" 
	 // сохранить номер и дату акта
	Тогда открылось окно "Акт о расхождениях после поступления $НомерАкта1$ от *"
	И из выпадающего списка с именем 'Статус' я выбираю точное значение "Отработано"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
Сценарий: Создание Корректировки на излишки (исправление ошибок)

И Я создаю перемещение товара из "Торговый зал" В "Карантин"

*Создание Акта о расхождениях
	И В командном интерфейсе я выбираю "Закупки" "Документы закупки (все)"
	Тогда открылось окно "Документы закупки (все)"
	Когда открылось окно "Документы закупки (все)"
	И в таблице 'СписокДокументыЗакупки' я нажимаю на кнопку с именем 'СписокНайти'
	Тогда открылось окно "Найти"
	И из выпадающего списка с именем 'FieldSelector' я выбираю точное значение "Номер"
	И в поле с именем 'Pattern' я ввожу текст "$НомерПриобретения$"
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно "Документы закупки (все)"
	И в таблице 'СписокДокументыЗакупки' я выбираю текущую строку
	Тогда открылось окно "Приобретение товаров и услуг АСА1-* от *"
	И я нажимаю на кнопку с именем 'ПодменюСоздатьНаОснованииОбычное_Авто_941BDB19E54AE235EB593A74638ACD6A'
	Тогда открылось окно "Акт о расхождениях после поступления (Создание)*"
	И я перехожу к закладке с именем 'СтраницаТовары'
	

*Создание Корректировки

