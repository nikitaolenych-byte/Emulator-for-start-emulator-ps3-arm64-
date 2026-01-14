#!/data/data/com.termux/files/usr/bin/bash
#!/data/data/com.termux/files/usr/bin/bash
# All-in-one скрипт для встановлення та запуску RPCS3 ARM64 Windows на Android через Termux

set -e

# Оновлення системи
pkg update
pkg upgrade -y

# Встановлення залежностей
pkg install -y box64 x11-repo wine curl unzip

# Створення директорії для RPCS3
mkdir -p $HOME/rpcs3-arm64
cd $HOME/rpcs3-arm64

# Завантаження RPCS3 ARM64 Windows (замінити посилання на актуальне)
if [ ! -f rpcs3.exe ]; then
  echo "Завантажуємо RPCS3 ARM64 Windows..."
  curl -L -o rpcs3.zip "https://example.com/rpcs3-arm64-windows.zip"
  unzip rpcs3.zip
  rm rpcs3.zip
fi

# Запуск емулятора
export BOX64_PATH=$HOME/rpcs3-arm64
box64 wine64 rpcs3.exe
