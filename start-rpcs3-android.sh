#!/data/data/com.termux/files/usr/bin/bash
# Скрипт для запуску RPCS3 ARM64 Windows через Termux на Android
# Потрібно: box64, wine, RPCS3 ARM64 Windows

set -e

# Встановлення box64
if ! command -v box64 &> /dev/null; then
  echo "Встановлюємо box64..."
  pkg install -y box64
fi

# Встановлення wine
if ! command -v wine64 &> /dev/null; then
  echo "Встановлюємо wine..."
  pkg install -y x11-repo
  pkg install -y wine
fi

# Створення директорії для RPCS3
mkdir -p $HOME/rpcs3-arm64
cd $HOME/rpcs3-arm64

# Завантаження RPCS3 ARM64 Windows (посилання потрібно оновити на актуальне)
if [ ! -f rpcs3.exe ]; then
  echo "Завантажуємо RPCS3 ARM64 Windows..."
  curl -L -o rpcs3.zip "https://example.com/rpcs3-arm64-windows.zip"
  unzip rpcs3.zip
  rm rpcs3.zip
fi

# Запуск RPCS3 через wine64
export BOX64_PATH=$HOME/rpcs3-arm64
box64 wine64 rpcs3.exe
