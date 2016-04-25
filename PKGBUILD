# Maintainer: Zach Shelton <mail at zachofalltrades dot net>

buildarch=1

pkgname=minimserver
pkgver=0.8.4
pkgrel=1
pkgdesc="Highly customizable and remarkably fast UPnP Audio Server."
arch=('armv7h' 'armv6h' 'arm' 'aarch64')
url="http://www.minimserver.com"
license=('custom:minimserver')
depends=('java-runtime-headless>=7')
backup=('etc/conf.d/minimserver' 
        'var/lib/minimserver/minimserver.config')
install=${pkgname}.install
source=(
        'minimserver.conf.d'
        'minimserver.config'
        'minimserver.service'
        'minimserver.sh'
)
source_armv7h=("http://jminim.com/cada/MinimServer-${pkgver}-linux-armhf.tar.gz")
source_armv6h=("http://jminim.com/cada/MinimServer-${pkgver}-linux-armhf.tar.gz")
source_arm=("http://jminim.com/cada/MinimServer-${pkgver}-linux-arm.tar.gz")
source_aarch64=("http://jminim.com/cada/MinimServer-${pkgver}-linux-arm.tar.gz")
backup=("etc/conf.d/${pkgname}")
sha256sums=('bf66fff8a2bd14c55e62ec4e6148b566d7d0afef731f2908361cb7cde7841158'
            '27a7f52e93fede69f9b0cd779f43cfdf7a9a01d70c34f326b777f5fa7516bbe5'
            '78df35d871fbcde8e2ec81edeab96be79b40477ccc40aba1ea76de90ef3da25d'
            '41f6cbeb1d911d56ce9e9a9a5d59e2f34f9ada5a4760e09ee7e99ed7124c849a')
sha256sums_armv7h=('566afae00d02ac3a1598ddd4c26e63a79e0e56242d6e258d92d54611ca78808c')
sha256sums_armv6h=('566afae00d02ac3a1598ddd4c26e63a79e0e56242d6e258d92d54611ca78808c')
sha256sums_arm=('693ae9295b5dcc552c627e568e4f5ef962fe7d2a9efe1388a116573800d1b486')
sha256sums_aarch64=('693ae9295b5dcc552c627e568e4f5ef962fe7d2a9efe1388a116573800d1b486')

package() {
# boilerplate systemd file placement...
  install -D -m644 ${srcdir}/minimserver.conf.d  ${pkgdir}/etc/conf.d/minimserver
  install -D -m644 ${srcdir}/minimserver.config  ${pkgdir}/var/lib/minimserver/minimserver.config
  install -D -m644 ${srcdir}/minimserver.service ${pkgdir}/usr/lib/systemd/system/minimserver.service
  install -D -m755 ${srcdir}/minimserver.sh      ${pkgdir}/usr/bin/minimserver

# custom license file from extracted source...
  install -D -m644 ${srcdir}/minimserver/minimserver-${pkgver}/LICENSE.txt ${pkgdir}/usr/share/licenses/minimserver/LICENSE
  
# package specific library extraction...
  cp -r ${srcdir}/minimserver ${pkgdir}/usr/lib/minimserver
}

