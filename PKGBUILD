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
install=${pkgname}.install
source=(
"${pkgname}.service"
"${pkgname}.conf.d"
"${pkgname}.sh"
)
backup=("etc/conf.d/${pkgname}")
source_armv7h=("http://jminim.com/cada/MinimServer-${pkgver}-linux-armhf.tar.gz")
source_armv6h=("http://jminim.com/cada/MinimServer-${pkgver}-linux-armhf.tar.gz")
source_arm=("http://jminim.com/cada/MinimServer-${pkgver}-linux-arm.tar.gz")
source_aarch64=("http://jminim.com/cada/MinimServer-${pkgver}-linux-arm.tar.gz")
sha256sums=('c89a3f5f4050c9b98aa41256acfa614597d702041b1c4a93aff2193b3b8d187a'
            'ab02a8c0cd825e66bde70ac4cdf26edc2fc8cb0bf1d2058350c3af78bcefac36'
            '8ec13a47181403bdcfc716826e9b8e809c01051ca79259f586ca16bcb3a2baf0')
sha256sums_armv7h=('566afae00d02ac3a1598ddd4c26e63a79e0e56242d6e258d92d54611ca78808c')
sha256sums_armv6h=('566afae00d02ac3a1598ddd4c26e63a79e0e56242d6e258d92d54611ca78808c')
sha256sums_arm=('693ae9295b5dcc552c627e568e4f5ef962fe7d2a9efe1388a116573800d1b486')
sha256sums_aarch64=('693ae9295b5dcc552c627e568e4f5ef962fe7d2a9efe1388a116573800d1b486')

package() {
# boilerplate systemd file placement...
  install -D -p -m644 ${srcdir}/${pkgname}.service ${pkgdir}/usr/lib/systemd/system/${pkgname}.service
  install -D -p -m644 ${srcdir}/${pkgname}.conf.d  ${pkgdir}/etc/conf.d/${pkgname}
  install -D -p -m755 ${srcdir}/${pkgname}.sh      ${pkgdir}/usr/bin/${pkgname}

# default data directory
  install -m755 -d ${pkgdir}/var/lib/${pkgname}

# custom license file from extracted source...
  install -D -p -m644 ${srcdir}/minimserver/minimserver-${pkgver}/LICENSE.txt ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
  
# copy extracted package...
  cp -r -p ${srcdir}/minimserver ${pkgdir}/usr/lib

# app requires its own tmp dir for native library extraction...
  install -m755 -d ${pkgdir}/usr/lib/minimserver/tmp

}
