# Використання RPCS3 ARM64 Windows на Android через Termux

## Основні скрипти
- install-deps-android.sh — встановлення всіх залежностей
- start-rpcs3-android.sh — запуск емулятора
- uninstall-rpcs3-android.sh — повне видалення емулятора та залежностей

## Коротка інструкція
1. Встановіть Termux.
2. Скопіюйте всі скрипти у Termux.
3. Дайте права на виконання:
   chmod +x *.sh
4. Запустіть встановлення залежностей:
   ./install-deps-android.sh
5. Запустіть емулятор:
   ./start-rpcs3-android.sh
6. Для видалення:
   ./uninstall-rpcs3-android.sh

## Додатково
- Для запуску ігор потрібні BIOS та образи ігор PlayStation 3.
- Можливі проблеми з продуктивністю на слабких пристроях.
- Для графічного інтерфейсу потрібен x11-repo та X сервер на Android.
