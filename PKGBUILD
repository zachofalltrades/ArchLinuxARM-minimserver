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
        'minimserver.service'
        'minimserver.sh'
        'minimserver.config'
)
source_armv7h=("http://jminim.com/cada/MinimServer-${pkgver}-linux-armhf.tar.gz")
source_armv6h=("http://jminim.com/cada/MinimServer-${pkgver}-linux-armhf.tar.gz")
source_arm=("http://jminim.com/cada/MinimServer-${pkgver}-linux-arm.tar.gz")
source_aarch64=("http://jminim.com/cada/MinimServer-${pkgver}-linux-arm.tar.gz")
sha256sums=('a5dae8945aac7f6898970223f0073e8b3acf508d72d6fb4ae23af5088c20d9c6'
            '3f956fec9b7ee6a9ab0ca2f65db87f0b8e7f2e52c790747b4f74f9d766793a97'
            '8b960a301944d1ca551acbd9146c17f39050d926c5529d6afe1011eb199e8444'
            '27a7f52e93fede69f9b0cd779f43cfdf7a9a01d70c34f326b777f5fa7516bbe5')
sha256sums_armv7h=('566afae00d02ac3a1598ddd4c26e63a79e0e56242d6e258d92d54611ca78808c')
sha256sums_armv6h=('566afae00d02ac3a1598ddd4c26e63a79e0e56242d6e258d92d54611ca78808c')
sha256sums_arm=('693ae9295b5dcc552c627e568e4f5ef962fe7d2a9efe1388a116573800d1b486')
sha256sums_aarch64=('693ae9295b5dcc552c627e568e4f5ef962fe7d2a9efe1388a116573800d1b486')

package() {
# boilerplate systemd file placement...
  install -D -p -m644 ${srcdir}/${pkgname}.conf.d  ${pkgdir}/etc/conf.d/${pkgname}
  install -D -p -m644 ${srcdir}/${pkgname}.service ${pkgdir}/usr/lib/systemd/system/${pkgname}.service
  install -D -p -m755 ${srcdir}/${pkgname}.sh      ${pkgdir}/usr/bin/${pkgname}

# starter config file
  install -D -p -m644 ${srcdir}/minimserver.config  ${pkgdir}/var/lib/minimserver/minimserver.config

# custom license file from extracted source...
  install -D -p -m644 ${srcdir}/minimserver/minimserver-${pkgver}/LICENSE.txt ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
  
# copy extracted package...
  cp -r -p ${srcdir}/minimserver ${pkgdir}/var/lib
}

