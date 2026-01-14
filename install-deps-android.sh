#!/data/data/com.termux/files/usr/bin/bash
# Скрипт для встановлення залежностей для запуску RPCS3 ARM64 Windows на Android

set -e

pkg update
pkg upgrade -y
pkg install -y box64 x11-repo wine curl unzip

echo "Залежності встановлено! Тепер запустіть ./start-rpcs3-android.sh"