#Область ПрограммныйИнтерфейс

Функция СписокКоллекцииСтандартные() Экспорт

	Результат = Новый СписокЗначений;
	
	Результат.Добавить("StandardActiveUsers", НСтр("ru = 'Активные пользователи';
															|en = 'Active users'"));
	Результат.Добавить("StandardEventLog", НСтр("ru = 'Журнал регистрации';
														|en = 'Event log'"));
	Результат.Добавить("StandardFindByRef", НСтр("ru = 'Поиск ссылок на объект';
														|en = 'Finding object references'"));
	Результат.Добавить("StandardDocumentsPosting", НСтр("ru = 'Проведение документов';
																|en = 'Documents posting'"));
	Результат.Добавить("StandardDeleteMarkedObjects", НСтр("ru = 'Удаление помеченных объектов';
																	|en = 'Deleting marked objects'"));
	Результат.Добавить("StandardExternalDataSourcesManagement", НСтр("ru = 'Управление внешними источниками данных';
																			|en = 'Management of external data sources'"));
	Результат.Добавить("StandardTotalsManagement", НСтр("ru = 'Управление итогами';
																	|en = 'Totals management'"));
	Результат.Добавить("StandardFullTextSearchManagement", НСтр("ru = 'Управление полнотекстовым поиском';
																		|en = 'Full-text search management'"));
	
	ИмяУправлениеРасширениямиКонфигурации = "StandardExtensionsManagement";
	Если ИТК_ОбщийКлиентСервер.ПоддерживаетсяПлатформой("8.3.20") Тогда
		ИмяУправлениеРасширениямиКонфигурации = "StandardConfigurationExtensionsManagement";
	КонецЕсли;
	Результат.Добавить(ИмяУправлениеРасширениямиКонфигурации, НСтр("ru = 'Управление расширениями конфигурации';
																			|en = 'Configuration extensions management'"));
	
	Если ИТК_ОбщийКлиентСервер.ПоддерживаетсяПлатформой("8.3.11") Тогда
		Результат.Добавить("StandardECSRegister", НСтр("ru = 'Управление системой взаимодействия';
																|en = 'Interaction system management'"));
	КонецЕсли;

	Если ИТК_ОбщийКлиентСервер.ПоддерживаетсяПлатформой("8.3.20") Тогда
		ИмяУправлениеСерверами = "StandardServersManagement";
	ИначеЕсли ИТК_ОбщийКлиентСервер.ПоддерживаетсяПлатформой("8.3.15") Тогда
		ИмяУправлениеСерверами = "StandartServersControl";
	Иначе
		ИмяУправлениеСерверами = Неопределено
	КонецЕсли;
	
	Если ЗначениеЗаполнено(ИмяУправлениеСерверами) Тогда

		Результат.Добавить(ИмяУправлениеСерверами, НСтр("ru = 'Управление серверами';
																|en = 'Server management'"));

	КонецЕсли;

	Если ИТК_ОбщийКлиентСервер.ПоддерживаетсяПлатформой("8.3.15") Тогда

		Результат.Добавить("StandardIntegrationServicesManagment", НСтр("ru = 'Управление сервисами интеграции';
																			|en = 'Integration service management'"));
		Результат.Добавить("StandardAnalyticsSystemManagement", НСтр("ru = 'Управление системой аналитики';
																			|en = 'Analytics system management'"));
		
	КонецЕсли;

	Если ИТК_ОбщийКлиентСервер.ПоддерживаетсяПлатформой("8.3.17") Тогда
		Результат.Добавить("StandardErrorProcessingSettings", НСтр("ru = 'Управление настройками обработки ошибок';
																			|en = 'Managing error handling settings'"));
	КонецЕсли;

	Если ИТК_ОбщийКлиентСервер.ПоддерживаетсяПлатформой("8.3.20") Тогда
		
		Результат.Добавить("StandardAuthenticationLocks", НСтр("ru = 'Блокировка аутентификации';
																		|en = 'Authentication blocking'"));
		Результат.Добавить("StandardAdditionalAuthenticationSettings", НСтр("ru = 'Дополнительные настройки аутентификации';
																					|en = 'Additional authentication settings'"));
		Результат.Добавить("StandardConfigurationLicense", НСтр("ru = 'Лицензирование конфигураций';
																		|en = 'Licensing configurations'"));
		Результат.Добавить("StandardEventLogSettings", НСтр("ru = 'Настройка журнала регистрации';
																	|en = 'Setting up the logbook'"));
		Результат.Добавить("StandardInfobaseParameters", НСтр("ru = 'Параметры информационной базы';
																	|en = 'Infobase parameters'"));
		Результат.Добавить("StandardLicenseAcquisition", НСтр("ru = 'Получение лицензии';
																	|en = 'Obtaining a license'"));
		Результат.Добавить("StandardInfobaseRegionalSettings", НСтр("ru = 'Региональные установки информационной базы';
																			|en = 'Regional settings of the infobase'"));
		Результат.Добавить("StandardUsers", НСтр("ru = 'Пользователи';
															|en = 'Users'"));
	КонецЕсли;

	Результат.СортироватьПоПредставлению();
	
	Возврат Результат;
	
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#КонецОбласти
