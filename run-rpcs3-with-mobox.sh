#!/data/data/com.termux/files/usr/bin/bash
# Скрипт для запуску RPCS3 ARM64 Windows через mobox на Android

set -e

# Створення директорії для емулятора
mkdir -p $HOME/rpcs3-arm64
cd $HOME/rpcs3-arm64

# Завантаження RPCS3 ARM64 Windows (замінити посилання на актуальне)
if [ ! -f rpcs3.exe ]; then
  echo "Завантажуємо RPCS3 ARM64 Windows..."
  curl -L -o rpcs3.zip "https://example.com/rpcs3-arm64-windows.zip"
  unzip rpcs3.zip
  rm rpcs3.zip
fi

# Запуск емулятора через mobox
mobox rpcs3.exe
