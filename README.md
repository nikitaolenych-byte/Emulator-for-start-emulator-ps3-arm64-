# Emulator-for-start-emulator-ps3-arm64-

## Швидкий старт RPCS3 ARM64 Windows

1. Завантажте файл mobox-install.sh у Termux.
2. Дайте права на виконання:
	chmod +x mobox-install.sh
3. Запустіть скрипт:
	./mobox-install.sh

Скрипт автоматично встановить всі залежності, завантажить RPCS3 ARM64 Windows, розпакує та запустить емулятор.

---

### Детальна інструкція та додаткові скрипти — не потрібні, все в одному файлі.

## Запуск RPCS3 ARM64 Windows на Android через Termux

### 1. Встановіть Termux
Завантажте Termux з Google Play або F-Droid.

### 2. Скопіюйте всі скрипти у Termux
Перенесіть файли:
	- install-deps-android.sh
	- start-rpcs3-android.sh
	- uninstall-rpcs3-android.sh

### 3. Дайте права на виконання
Виконайте у Termux:
```
chmod +x install-deps-android.sh start-rpcs3-android.sh uninstall-rpcs3-android.sh
```

### 4. Встановіть залежності
Запустіть:
```
./install-deps-android.sh
```

### 5. Запустіть емулятор
Запустіть:
```
./start-rpcs3-android.sh
```

### 6. Видалення емулятора
Якщо потрібно видалити все:
```
./uninstall-rpcs3-android.sh
```

### 7. Додатково
- Для запуску ігор потрібні BIOS та образи ігор PlayStation 3.
- Для графічного інтерфейсу потрібен X сервер на Android (наприклад, XServer XSDL).
- Посилання на RPCS3 ARM64 Windows у скрипті start-rpcs3-android.sh потрібно замінити на актуальне.

---

#### Якщо виникли проблеми
- Перевірте лог Wine та box64.
- Переконайтесь, що пристрій ARM64 та має достатньо оперативної пам’яті.
- Звертайтесь у Issues репозиторію або на офіційний форум Termux.