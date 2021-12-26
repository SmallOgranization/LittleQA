﻿#language: ru

Функционал: Создание документа Поступления товаров

Как Менеджер по закупкам я хочу
Создание документа поступления товаров 
чтобы поставить товар на учет 

Контекст: // Окружение или условие, которое будет исполняться перед каждым сценарием
Дано Я открыл новый сеанс TestClient или подключил уже существующий


Сценарий: Создание документа Поступление товаров
* Открытие формы создания документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Закупки' 'Поступления товаров'
	Тогда открылось окно 'Поступления товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Поступление товара (создание)'
* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
	И я нажимаю кнопку выбора у поля с именем "Поставщик"
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000012' | 'Мосхлеб ОАО'  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Поступление товара (создание) *'
* Проверка заполнения склада
	Тогда элемент формы с именем "Склад" стал равен 'Склад отдела продаж'	
* Заполнение товаров
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Колбаса'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку "Записать"
* Проверка заполнения табличной части
	Тогда таблица "Товары" содержит строки:
		| 'N' | 'Товар'   | 'Цена'   | 'Артикул' | 'Количество' | 'Сумма'    |
		| '1' | 'Колбаса' | '250,00' | '*'   | '12,00'      | '2 500,00' |					
* Запоминание номера документа
	И я запоминаю значение поля "Номер"	как "$Номер$"
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Поступление товара (создание) *' в течение 20 секунд
* Проверка создания документа
	И таблица "Список" содержит строки:
		| 'Номер'   |
		| '$Номер$' |
		
Сценарий: Проверка наличия справочника номенклатуры
	И В командном интерфейсе я выбираю 'Закупки' 'Товары'
	Тогда открылось окно 'Товары'
	И таблица "Список" содержит строки:
		| 'Наименование' |
		| 'Доставка'    |