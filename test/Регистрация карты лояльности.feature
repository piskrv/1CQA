﻿#language: ru

@tree

Функционал: Регистрация карты лояльности

Как Кассир я хочу
Зарегистрировать карту лояльности
чтобы проверить работоспособность функции   

Контекст:
	И я подключаю TestClient "Касса1" логин "Касса1" пароль ""
	И я закрываю все окна клиентского приложения
	И Я запоминаю значение выражения '7' в переменную "НомерТелефона"

								//		9999000698656
								//		9999003299591
								//		9999002031932
								//		9999000264196
								//		9999001863275
								//		9999003516698
								//		9999005257506
								//		9999011413170
								//		9999005253188
								//		9999002923534

Сценарий: Я регистрирую карту лояльности с номером "9999000698656"

И В командном интерфейсе я выбираю "Продажи" "Рабочее место кассира"
Когда открылось окно "Продажа (Кассир: Касса * Продавец: <Не выбран>)*"
И я нажимаю на кнопку с именем 'ИзменитьПродавца'
Тогда открылось окно "Выбор текущего продавца"
И из выпадающего списка с именем 'Пользователь' я выбираю по строке "Пискарев Александр Сергеевич"
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Когда открылось окно "Продажа (Кассир: Касса * Продавец: Пискарев Александр Сергеевич)*"
И я нажимаю на кнопку с именем 'НовыйЧек'
И я нажимаю на кнопку с именем 'СчитатьКартуЛояльности'
Когда открылось окно "Считывание карты лояльности"
И я эмулирую сканирование штрихкода БПО '9999000698656' через буфер обмена
И я эмулирую сканирование штрихкода БПО "9999000698656" через файл события (Расширение)
И я перехожу к следующему реквизиту
Тогда открылось окно "Считывание карты лояльности"
И в поле с именем 'НомерТелефона' я ввожу текст "+7 (913) 648-44-21" //$НомерТелефона$
И я нажимаю на кнопку с именем 'КомандаОтправитьКодПодтвержденияТелефона'
Когда открылось окно "Считывание карты лояльности"


