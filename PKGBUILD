# Maintainer: Zach Shelton <mail at zachofalltrades dot net>

buildarch=1

pkgname=minimserver
pkgver=0.8.3f
pkgrel=2
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

sha256sums=('bf66fff8a2bd14c55e62ec4e6148b566d7d0afef731f2908361cb7cde7841158'
            '27a7f52e93fede69f9b0cd779f43cfdf7a9a01d70c34f326b777f5fa7516bbe5'
            '78df35d871fbcde8e2ec81edeab96be79b40477ccc40aba1ea76de90ef3da25d'
            'aac9de68a7fb5967d53dd25b8fe89cdfcd11714410238bd2e7422dac6d7791c7')
sha256sums_armv7h=('8c93880f2302ea9e2e8de897c27423be3fc185ac93b07e609ce325daccd6ea40')
sha256sums_armv6h=('8c93880f2302ea9e2e8de897c27423be3fc185ac93b07e609ce325daccd6ea40')
sha256sums_arm=('18105ec77b363829aae1b0506e0c0fe09d10f16fc9cc3c90f07c976209f3f6a2')
sha256sums_aarch64=('18105ec77b363829aae1b0506e0c0fe09d10f16fc9cc3c90f07c976209f3f6a2')

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

