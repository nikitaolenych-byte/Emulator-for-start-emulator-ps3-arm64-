#!/data/data/com.termux/files/usr/bin/bash
# Скрипт для повного видалення RPCS3 ARM64 Windows та залежностей з Termux

set -e

# Видалення директорії емулятора
rm -rf $HOME/rpcs3-arm64

# Видалення пакетів
pkg uninstall -y box64 wine x11-repo curl unzip

echo "RPCS3 та всі залежності видалено!"