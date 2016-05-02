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
sha256sums=('3094a6355addad61db040c96225cd357a19c0e997116333f2ee5cc4d6557b239'
            '3f956fec9b7ee6a9ab0ca2f65db87f0b8e7f2e52c790747b4f74f9d766793a97'
            '021f30362b130afbe2396580be108141e1ed8cc8a5d265dbccff454da1d041df'
            '7871e301e5ff10626f08db635fc95cbe36e8b139ef33d8f8e393ba8d70de834a')
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
  install -D -p -m644 ${srcdir}/minimserver.config  ${pkgdir}/var/lib/${pkgname}/minimserver.config

# custom license file from extracted source...
  install -D -p -m644 ${srcdir}/minimserver/minimserver-${pkgver}/LICENSE.txt ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
  
# copy extracted package...
  cp -r -p ${srcdir}/minimserver ${pkgdir}/usr/lib

# app requires its own tmp dir for native library extraction...
  install -m755 -d ${pkgdir}/usr/lib/${pkgname}/tmp

}

