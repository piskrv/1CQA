﻿#language: ru

@tree
@ExportScenarios

Функционал: Смена статуса КИЗов в регистре МДЛП

Как Тестировщик я хочу
Сменить статус КИЗа  
чтобы иметь возможность его продать   

Контекст:
	И я подключаю TestClient "Администратор" логин "Администратор" пароль "123"
	И я закрываю все окна клиентского приложения
	
	
Сценарий: Я меняю статус КИЗа "КИЗМДЛП" в МДЛП на "Статус" //В обороте
И я открываю окно функции для технического специалиста (расширение)
Когда открылось окно "Функции для технического специалиста"
Когда открылось окно "Функции для технического специалиста"
И в таблице 'Table' я нажимаю на кнопку с именем 'TableНайти1'
Тогда открылось окно "Найти"
И в поле с именем 'Pattern' я ввожу текст "Упаковки МДЛП"
И я нажимаю на кнопку с именем 'Find'
И в таблице 'Table' я перехожу на одну строку вниз
Когда открылось окно "Функции для технического специалиста"
И в таблице 'Table' я выбираю текущую строку
И в таблице 'Table' я нажимаю на кнопку с именем 'CommandOpen'
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Когда открылось окно "Найти"
	И из выпадающего списка с именем 'FieldSelector' я выбираю точное значение "Номер упаковки"
	И в поле с именем 'Pattern' я ввожу текст '[КИЗМДЛП]'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно "Упаковки МДЛП"
	И в таблице 'Список' я активизирую поле с именем 'НомерУпаковки'
	И в таблице 'Список' я активизирую поле с именем 'Статус'
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Упаковки МДЛП"
	Когда открылось окно "Упаковки МДЛП"
	И из выпадающего списка с именем 'Статус' я выбираю точное значение '[Статус]'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Упаковки МДЛП *" в течение 20 секунд
	Тогда открылось окно "Упаковки МДЛП"