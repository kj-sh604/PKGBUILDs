pkgname=wgetpkg
pkgver=0.2.0
pkgrel=2
pkgdesc="Download AUR packages with wget"
arch=('any')
depends=('wget')
url="https://github.com/kj-sh604/wgetpkg"
license=('UNLICENSE')
source=("$pkgname-$pkgver.tar.gz::https://github.com/kj-sh604/wgetpkg/archive/refs/tags/$pkgver.tar.gz")

package() {
  cd "$srcdir/$pkgname-$pkgver"

  msg2 'Installing license...'
  install -Dm 644 UNLICENSE -t "$pkgdir/usr/share/licenses/$pkgname"

  msg2 'Installing documentation...'
  install -Dm 644 README.md -t "$pkgdir/usr/share/doc/$pkgname"

  msg2 'Installing...'
  install -Dm 755 wgetpkg -t "$pkgdir/usr/bin"
}
