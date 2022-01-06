﻿
#language: ru
@tree
@ПростыеПроверки

Функциональность: Проверка открытия форм справочников и документа

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения
	
Сценарий: Открытие формы списка "Agreements" 

	Дано Я открываю основную форму списка справочника "Agreements"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Agreements"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "Agreements"

	Дано Я открываю основную форму справочника "Agreements"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Agreements"
	И Я закрываю текущее окно

Сценарий: Открытие формы списка "Companies" 

	Дано Я открываю основную форму списка справочника "Companies"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Companies"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "Companies"

	Дано Я открываю основную форму справочника "Companies"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Companies"
	И Я закрываю текущее окно
	
Сценарий: Открытие формы списка "Items" 

	Дано Я открываю основную форму списка справочника "Items"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Items"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "Items"

	Дано Я открываю основную форму справочника "Items"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Items"
	И Я закрываю текущее окно

Сценарий: Открытие формы списка "Partners" 

	Дано Я открываю основную форму списка справочника "Partners"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Partners"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "Partners"

	Дано Я открываю основную форму справочника "Partners"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Partners"
	И Я закрываю текущее окно

Сценарий: Открытие формы списка "Stores" 

	Дано Я открываю основную форму списка справочника "Stores"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Stores"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "Stores"

	Дано Я открываю основную форму справочника "Stores"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Stores"
	И Я закрываю текущее окно