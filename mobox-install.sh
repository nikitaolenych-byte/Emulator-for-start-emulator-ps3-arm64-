#!/data/data/com.termux/files/usr/bin/bash
# All-in-one скрипт для встановлення та запуску Mobox (емулятор RPCS3 ARM64 Windows) на Android через Termux

set -e

# Оновлення системи
pkg update
pkg upgrade -y

# Встановлення залежностей
pkg install -y box64 x11-repo wine curl unzip

# Створення директорії для Mobox
mkdir -p $HOME/mobox
cd $HOME/mobox

# Завантаження Mobox (замінити посилання на актуальне)
if [ ! -f mobox.exe ]; then
  echo "Завантажуємо Mobox..."
  curl -L -o mobox.zip "https://example.com/mobox-arm64-windows.zip"
  unzip mobox.zip
  rm mobox.zip
fi

# Запуск емулятора
export BOX64_PATH=$HOME/mobox
box64 wine64 mobox.exe
