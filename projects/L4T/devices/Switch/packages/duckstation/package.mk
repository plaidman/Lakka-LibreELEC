################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2016 Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="duckstation"
PKG_VERSION="815146e"
PKG_ARCH="aarch64"
PKG_LICENSE="non commercial"
PKG_SITE="https://github.com/stenzek/duckstation/"
PKG_URL="https://www.duckstation.org/libretro/duckstation_libretro_linux_aarch64.zip"
PKG_LONGDESC="DuckStation is a PlayStation 1 (aka PSX) emulator focusing on playability, speed, graphical enhancements, and long-term maintainability. A 'BIOS' ROM image is required to start the emulator and to play games. Features include hardware rendering (OpenGL, Vulkan and D3D11), upscaling, 24-bit color, and a dynamic recompiler (x86-64, ARMv7, AArch64)."
PKG_TOOLCHAIN="manual"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

unpack() {
  mkdir -p ${PKG_BUILD}
  unzip ${SOURCES}/${PKG_NAME}/${PKG_NAME}-${PKG_VERSION}.zip -d ${PKG_BUILD}
}

make_target() {
  mkdir -p $INSTALL/usr/lib/libretro
  cp duckstation_libretro.so $INSTALL/usr/lib/libretro/
}
