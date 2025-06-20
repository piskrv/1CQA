﻿#language: ru

@tree
@ExportScenarios


Функционал: Проверка всех функций

Как Тестировщик я хочу
Проверить все основные функции пользователя Заведующий аптекой  
чтобы убедиться в работоспособности базы

Контекст:
	И я подключаю TestClient "Заведующий аптекой" логин "Заведующий аптекой" пароль ""
//	И я подключаю TestClient "Администратор" логин "Администратор" пароль "123"
	И я закрываю все окна клиентского приложения

Сценарий: Подготовка данных

	// Документ.ПриходныйОрдерНаТовары

	И я проверяю или создаю для документа "ПриходныйОрдерНаТовары" объекты:
		| 'Ссылка'                                                                          | 'ПометкаУдаления' | 'Номер'       | 'Дата'                | 'Проведен' | 'Склад'                                                             | 'Распоряжение'                                                                      | 'Ответственный'                                                           | 'Исполнитель'                                                             | 'Комментарий' | 'Статус'                              | 'Помещение'                                                                     | 'ЗонаПриемки' | 'РаспоряжениеНаНесколькоСкладов' | 'ДатаВходящегоДокумента' | 'НомерВходящегоДокумента' | 'СкладскаяОперация'                          | 'СостояниеЗаполненияМногооборотнойТары' | 'РежимПросмотраПоТоварам' | 'ВсегоМест' | 'Отправитель'                                                         | 'ЗакрыватьГрафикПоступления' | 'ХозяйственнаяОперация'                         | 'ФК_ДатаУстановкиСтатусаПринят' |
		| 'e1cib/data/Документ.ПриходныйОрдерНаТовары?ref=a4a7e8cc18e83d4511f02587b7fdcd79' | 'False'           | 'АСА1-104168' | '30.04.2025 11:55:29' | 'True'     | 'e1cib/data/Справочник.Склады?ref=80d3e0db550a29d511e8a7736d411c34' | 'e1cib/data/Документ.ПриобретениеТоваровУслуг?ref=a4a7e8cc18e83d4511f02587a3380b1e' | 'e1cib/data/Справочник.Пользователи?ref=80d3e0db550a29d511e8a98fbc9a4f8b' | 'e1cib/data/Справочник.Пользователи?ref=80f0e0db550a29d411edfeab78b68a00' | 'Автотест'    | 'Enum.СтатусыПриходныхОрдеров.Принят' | 'e1cib/data/Справочник.СкладскиеПомещения?ref=80d3e0db550a29d511e8a7736d411c36' | ''            | 'False'                          | '30.04.2025 0:00:00'     | '99991551'                | 'Enum.СкладскиеОперации.ПриемкаОтПоставщика' | ''                                      |                           |             | 'e1cib/data/Справочник.Партнеры?ref=80d3e0db550a29d511e8a771fa14b06e' | 'False'                      | 'Enum.ХозяйственныеОперации.ЗакупкаУПоставщика' | '30.04.2025 11:55:31'           |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                          | 'Номенклатура'                                                            | 'Характеристика'                                                                        | 'Назначение' | 'Упаковка' | 'КоличествоУпаковок' | 'Количество' | 'СтатусУказанияСерий' | 'ДокументОтгрузки' | 'УпаковочныйЛист' | 'УпаковочныйЛистРодитель' | 'Штрихкод' | 'ЭтоУпаковочныйЛист' | 'ЭтоСлужебнаяСтрокаПустогоУпаковочногоЛиста' | 'Комментарий' | 'Серия'                                                                        | 'УАС_ИдентификаторСтроки' |
		| 'e1cib/data/Документ.ПриходныйОрдерНаТовары?ref=a4a7e8cc18e83d4511f02587b7fdcd79' | 'e1cib/data/Справочник.Номенклатура?ref=80ece0db550a29d411ecb59d87e3c879' | 'e1cib/data/Справочник.ХарактеристикиНоменклатуры?ref=a4a7e8cc18e83d4511f02587a3380b1c' | ''           | ''         | 1                    | 1            | 14                    | ''                 | ''                | ''                        | ''         | 'False'              |                                              | ''            | 'e1cib/data/Справочник.СерииНоменклатуры?ref=80c92a39dadcfed411f025878bf2b898' | ''                        |
		| 'e1cib/data/Документ.ПриходныйОрдерНаТовары?ref=a4a7e8cc18e83d4511f02587b7fdcd79' | 'e1cib/data/Справочник.Номенклатура?ref=80ede0db550a29d411ecf3a364f0f282' | 'e1cib/data/Справочник.ХарактеристикиНоменклатуры?ref=a4a7e8cc18e83d4511f02587a3380b1d' | ''           | ''         | 1                    | 1            | 14                    | ''                 | ''                | ''                        | ''         | 'False'              |                                              | ''            | 'e1cib/data/Справочник.СерииНоменклатуры?ref=80c92a39dadcfed411f0258795b56130' | ''                        |

